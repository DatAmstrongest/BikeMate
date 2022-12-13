import 'dart:async';
import 'package:bikemate/components/map/collapsed_panel.dart';
import 'package:bikemate/components/map/floating_panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
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

  refresh() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Map'),
        backgroundColor: Colors.green[700],
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
            minHeight: 120,
            maxHeight: 750,
            renderPanelSheet: false,
            panel: FloatingPanel(
              isPanelOpen: isPanelOpen,
              locations: Location.locations,
              userLocation: _kGoogle,
            ),
            controller: _pc,
            collapsed: Container(
              child: CollapsedPanel(
                isPanelOpen: isPanelOpen,
                pc: _pc,
                markers: _markers,
                callback: refresh,
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
                  })
                },
                zoomGesturesEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                onMapCreated: _onMapCreated,
                initialCameraPosition: _kGoogle,
                markers: _markers,
              ),
            ),
          ),
          !isPanelOpen
              ? Positioned(
                  bottom: 110,
                  right: 24,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.gps_fixed),
                      onPressed: () async {
                        getUserCurrentLocation().then((value) async {
                          // specified current users location
                          _kGoogle = new CameraPosition(
                            target: LatLng(value.latitude, value.longitude),
                            zoom: 14,
                          );

                          final GoogleMapController controller =
                              await _controller.future;
                          controller.animateCamera(
                              CameraUpdate.newCameraPosition(_kGoogle));
                          setState(() {});
                        });
                      },
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
