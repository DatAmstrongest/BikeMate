import 'package:bikemate/UI/images.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';

class FloatingPanel extends StatelessWidget {
  final isPanelOpen;
  final locations;
  final userLocation;
  const FloatingPanel({this.isPanelOpen, this.locations, this.userLocation});

  @override
  Widget build(BuildContext context) {
    return isPanelOpen
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: locations.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: ListTile(
                        leading: locations[index].type == "isbike"
                            ? Images.isbikeLogo
                            : locations[index].type == "beltur"
                                ? SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Images.belturLogo)
                                : Icon(
                                    FontAwesomeIcons.wrench,
                                    color: Colors.orange,
                                  ),
                        title: Text(
                            '${(Geolocator.distanceBetween(locations[index].lat, locations[index].lng, userLocation.target.latitude, userLocation.target.longitude) / 1000).round()}'),
                      ),
                    ),
                    Divider(color: AppColors.dividerColor)
                  ],
                );
              },
            ),
          )
        : Container();
  }
}
