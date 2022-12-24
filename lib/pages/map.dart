import 'dart:async';
import 'package:bikemate/components/map/collapsed_panel.dart';
import 'package:bikemate/components/map/details_floating_panel.dart';
import 'package:bikemate/components/map/floating_panel.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'locations.dart';

class Map extends StatefulWidget {
  static const route = "/map";
  @override
  State<Map> createState() => MapState();
}

class MapState extends State<Map> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Set<Marker> _markers = Set();

  CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(41.02, 28.95),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  final PanelController _pc = PanelController();
  var isPanelOpen = false;
  var isDetails = false;
  var detailsLocation;

  refresh() {
    setState(() {});
  }

  void setDetails(value, location) {
    isDetails = value;
    detailsLocation = location;
    setState(() {});
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
    });
    return await Geolocator.getCurrentPosition();
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
  }

  List<LatLng> polylineCoordinates = [];
  void getPolyPoints(sourceLocation, destination) async {
    polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyAMq76MCGtRdfMaMoxEs4TabFUWkavsA1Q", // Your Google Map Key
      PointLatLng(
          sourceLocation.target.latitude, sourceLocation.target.longitude),
      PointLatLng(destination.lat, destination.lng),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      _pc.close();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Map'),
        backgroundColor: AppColors.backgroundColor2,
      ),
      body: Stack(
        children: [
          SlidingUpPanel(
            onPanelClosed: () => {
              setState(
                () {
                  isPanelOpen = false;
                  _pc.close();
                },
              )
            },
            onPanelOpened: () => {
              setState(() {
                isPanelOpen = true;
              })
            },
            onPanelSlide: (position) => {
              setState(() {
                if (position > 0.1) {
                  isPanelOpen = true;
                } else {
                  isPanelOpen = false;
                }
              })
            },
            minHeight: isDetails ? 170 : 130,
            maxHeight: 800,
            renderPanelSheet: false,
            panel: isDetails
                ? DetailsFloatingPanel(
                    location: detailsLocation,
                    changeDetails: setDetails,
                    drawRoute: getPolyPoints,
                    currentLocation: _kGoogle,
                  )
                : FloatingPanel(
                    isPanelOpen: isPanelOpen,
                    locations: Location.locations,
                    userLocation: _kGoogle,
                    changeDetails: setDetails,
                  ),
            controller: _pc,
            collapsed: Container(
              child: isDetails
                  ? Container()
                  : CollapsedPanel(
                      isPanelOpen: isPanelOpen,
                      pc: _pc,
                      markers: _markers,
                      callback: refresh,
                      changeDetails: setDetails,
                    ),
              margin: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            body: Center(
              child: GoogleMap(
                onTap: (argument) => {
                  setState(() {
                    _pc.close();
                    isPanelOpen = false;
                    isDetails = false;
                  })
                },
                zoomGesturesEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                onMapCreated: _onMapCreated,
                initialCameraPosition: _kGoogle,
                markers: _markers,
                polylines: {
                  Polyline(
                    polylineId: const PolylineId("route"),
                    points: polylineCoordinates,
                    color: Colors.blue,
                    width: 6,
                  ),
                },
              ),
            ),
          ),
          !isPanelOpen && !isDetails
              ? Positioned(
                  bottom: 150,
                  right: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor1,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () async {
                            final GoogleMapController controller =
                                await _controller.future;
                            var currentZoomLevel =
                                await controller.getZoomLevel();

                            currentZoomLevel = currentZoomLevel + 2;

                            controller.animateCamera(CameraUpdate.zoomIn());
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.remove,
                            size: 25,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () async {
                            final GoogleMapController controller =
                                await _controller.future;
                            controller.animateCamera(CameraUpdate.zoomOut());
                          },
                        ),
                        IconButton(
                          iconSize: 30,
                          color: Colors.blue.shade900,
                          icon: Icon(Icons.gps_fixed),
                          onPressed: () async {
                            getUserCurrentLocation().then(
                              (value) async {
                                // specified current users location
                                _kGoogle = new CameraPosition(
                                  target:
                                      LatLng(value.latitude, value.longitude),
                                  zoom: 14,
                                );

                                final GoogleMapController controller =
                                    await _controller.future;
                                controller.animateCamera(
                                    CameraUpdate.newCameraPosition(_kGoogle));
                                setState(() {});
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
