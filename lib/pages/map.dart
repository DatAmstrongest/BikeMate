import 'dart:async';
import 'dart:ui' as ui;
import 'package:custom_marker/marker_icon.dart';
import 'dart:typed_data';
import 'package:bikemate/UI/images.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(41.02, 28.95),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  final PanelController _pc = PanelController();
  var isPanelOpen = false;
  var showIsbikes = false;
  var showBelturs = false;
  var showStations = false;

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
    });
    return await Geolocator.getCurrentPosition();
  }

  Set<Marker> _markers = Set();

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
  }

  Future<void> _addIsbikes() async {
    BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
    await MarkerIcon.pictureAsset(
      width: 50,
      height: 50,
      assetPath: "assets/images/isbikeLogo.png",
    ).then(
      (onValue) {
        myIcon = onValue;
      },
    );
    setState(() {
      for (final location in Location.locations) {
        if ((showIsbikes && location.type == "isbike")) {
          final marker = Marker(
            icon: myIcon,
            markerId: MarkerId(location.name),
            position: LatLng(location.lat, location.lng),
            infoWindow: InfoWindow(
              title: location.name,
            ),
          );

          _markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeIsbikes() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "isbike") {
          Marker marker = _markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          _markers.remove(marker);
        }
      }
    });
  }

  Future<void> _addBelturs() async {
    BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
    await MarkerIcon.pictureAsset(
      width: 80,
      height: 80,
      assetPath: "assets/images/belturLogo.jpeg",
    ).then(
      (onValue) {
        myIcon = onValue;
      },
    );
    setState(() {
      for (final location in Location.locations) {
        if ((showBelturs && location.type == "beltur")) {
          final marker = Marker(
            icon: myIcon,
            markerId: MarkerId(location.name),
            position: LatLng(location.lat, location.lng),
            infoWindow: InfoWindow(
              title: location.name,
            ),
          );

          _markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeBelturs() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "beltur") {
          Marker marker = _markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          _markers.remove(marker);
        }
      }
    });
  }

  Future<void> _addStations() async {
    BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
    await MarkerIcon.markerFromIcon(FontAwesomeIcons.wrench, Colors.orange, 50)
        .then((onValue) {
      myIcon = onValue;
    });
    setState(() {
      for (final location in Location.locations) {
        if ((showStations && location.type == "station")) {
          final marker = Marker(
            icon: myIcon,
            markerId: MarkerId(location.name),
            position: LatLng(location.lat, location.lng),
            infoWindow: InfoWindow(
              title: location.name,
            ),
          );

          _markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeStations() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "station") {
          Marker marker = _markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          _markers.remove(marker);
        }
      }
    });
  }

  Widget _floatingCollapsed() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            iconSize: 40,
            onPressed: () {
              _pc.open();
              setState(() {
                isPanelOpen = true;
              });
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            iconSize: 40,
            onPressed: () async {
              showIsbikes = !showIsbikes;
              if (showIsbikes) {
                _addIsbikes();
              } else {
                _removeIsbikes();
              }
            },
            icon: showIsbikes ? Images.isbikeLogo : Images.disabledIsbikeLogo,
          ),
          IconButton(
              iconSize: 40,
              onPressed: () {
                setState(() {
                  showBelturs = !showBelturs;
                  if (showBelturs) {
                    _addBelturs();
                  } else {
                    _removeBelturs();
                  }
                });
              },
              icon:
                  showBelturs ? Images.belturLogo : Images.disabledBelturLogo),
          IconButton(
            iconSize: 40,
            onPressed: () {
              setState(() {
                showStations = !showStations;
                if (showStations) {
                  _addStations();
                } else {
                  _removeStations();
                }
              });
            },
            icon: showStations
                ? Icon(
                    FontAwesomeIcons.wrench,
                    color: Colors.orange,
                  )
                : Icon(
                    FontAwesomeIcons.wrench,
                    color: Colors.grey,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _floatingPanel() {
    return Container(
      decoration: BoxDecoration(
        color: isPanelOpen ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Center(
        child: Text("This is the SlidingUpPanel when open"),
      ),
    );
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
            minHeight: 120,
            maxHeight: 700,
            renderPanelSheet: false,
            panel: _floatingPanel(),
            controller: _pc,
            collapsed: Container(
                child: _floatingCollapsed(),
                margin: EdgeInsets.only(
                  bottom: 30,
                )),
            body: Center(
              child: GoogleMap(
                zoomGesturesEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                onMapCreated: _onMapCreated,
                initialCameraPosition: _kGoogle,
                markers: _markers,
              ),
            ),
          ),
          Positioned(
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
                    CameraPosition cameraPosition = new CameraPosition(
                      target: LatLng(value.latitude, value.longitude),
                      zoom: 14,
                    );

                    final GoogleMapController controller =
                        await _controller.future;
                    controller.animateCamera(
                        CameraUpdate.newCameraPosition(cameraPosition));
                    setState(() {});
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
