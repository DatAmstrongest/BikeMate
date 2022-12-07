import 'dart:async';
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
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(20.42796133580664, 80.885749655962),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  final PanelController _pc = PanelController();
  var isPanelOpen = false;

  @override
  void initState() {
    super.initState();
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
    });
    return await Geolocator.getCurrentPosition();
  }

  final HashMap<String, Marker> _markers = HashMap<String, Marker>();
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final isbikes = Isbike.Isbikes;
    var myIcon;
    await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(48, 48)),
      "assets/images/logo.png",
    ).then(
      (onValue) {
        myIcon = onValue;
      },
    );

    setState(
      () {
        _markers.clear();
        for (final isbike in isbikes) {
          final marker = Marker(
            icon: myIcon,
            markerId: MarkerId(isbike.name),
            position: LatLng(isbike.lat, isbike.lng),
            infoWindow: InfoWindow(
              title: isbike.name,
            ),
          );
          _markers[isbike.name] = marker;
        }
      },
    );
    _controller.complete(controller);
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
            onPressed: () {
              _pc.open();
              setState(() {
                isPanelOpen = true;
              });
            },
            icon: SvgPicture.asset("assets/images/smallestLogo.svg"),
          ),
          IconButton(
            iconSize: 40,
            onPressed: () {
              _pc.open();
              setState(() {
                isPanelOpen = true;
              });
            },
            icon: Icon(Icons.dining),
          ),
          IconButton(
            iconSize: 40,
            onPressed: () {
              _pc.open();
              setState(() {
                isPanelOpen = true;
              });
            },
            icon: Icon(FontAwesomeIcons.wrench),
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
                markers: _markers.values.toSet(),
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
