import 'package:bikemate/UI/images.dart';
import 'package:bikemate/pages/locations.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:custom_marker/marker_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CollapsedPanel extends StatefulWidget {
  final pc;
  var isPanelOpen;
  var markers;
  Function callback;
  Function changeDetails;
  CollapsedPanel(
      {this.pc,
      this.isPanelOpen,
      this.markers,
      required this.callback,
      required this.changeDetails});

  @override
  State<CollapsedPanel> createState() => _CollapsedPanelState();
}

class _CollapsedPanelState extends State<CollapsedPanel> {
  var showIsbikes = false;
  var showBelturs = false;
  var showStations = false;

  Future<void> _addIsbikes() async {
    BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
    await MarkerIcon.pictureAsset(
      width: 50,
      height: 50,
      assetPath: "assets/images/logos/isbikeLogo.png",
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
            onTap: () => {
              widget.changeDetails(true, location),
            },
          );

          widget.markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeIsbikes() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "isbike") {
          Marker marker = widget.markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          widget.markers.remove(marker);
        }
      }
    });
  }

  Future<void> _addBelturs() async {
    BitmapDescriptor myIcon = BitmapDescriptor.defaultMarker;
    await MarkerIcon.pictureAsset(
      width: 80,
      height: 80,
      assetPath: "assets/images/logos/belturLogo.jpeg",
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
            onTap: () => {
              widget.changeDetails(true, location),
            },
          );

          widget.markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeBelturs() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "beltur") {
          Marker marker = widget.markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          widget.markers.remove(marker);
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
            onTap: () => {
              widget.changeDetails(true, location),
            },
          );

          widget.markers.add(marker);
        }
      }
    });
  }

  Future<void> _removeStations() async {
    setState(() {
      for (final location in Location.locations) {
        if (location.type == "station") {
          Marker marker = widget.markers.firstWhere(
              (marker) => marker.markerId.value == location.name,
              orElse: null);
          widget.markers.remove(marker);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 40,
                onPressed: () {
                  widget.pc.open();
                  setState(() {
                    widget.isPanelOpen = true;
                  });
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                iconSize: 40,
                onPressed: () async {
                  showIsbikes = !showIsbikes;
                  if (showIsbikes) {
                    await _addIsbikes();
                  } else {
                    await _removeIsbikes();
                  }
                  widget.callback();
                },
                icon:
                    showIsbikes ? Images.isbikeLogo : Images.disabledIsbikeLogo,
              ),
              IconButton(
                iconSize: 40,
                onPressed: () async {
                  showBelturs = !showBelturs;
                  if (showBelturs) {
                    await _addBelturs();
                  } else {
                    await _removeBelturs();
                  }
                  widget.callback();
                },
                icon:
                    showBelturs ? Images.belturLogo : Images.disabledBelturLogo,
              ),
              IconButton(
                iconSize: 40,
                onPressed: () async {
                  showStations = !showStations;
                  if (showStations) {
                    await _addStations();
                  } else {
                    await _removeStations();
                  }
                  widget.callback();
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
        ],
      ),
    );
  }
}
