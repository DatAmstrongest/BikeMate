import 'package:bikemate/UI/images.dart';
import 'package:bikemate/pages/locations.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';

class FloatingPanel extends StatefulWidget {
  final isPanelOpen;
  final locations;
  final userLocation;
  var queryFound = false;
  FloatingPanel({this.isPanelOpen, this.locations, this.userLocation});

  @override
  State<FloatingPanel> createState() => _FloatingPanelState();
}

class _FloatingPanelState extends State<FloatingPanel> {
  @override
  void initState() {
    items = List.from(widget.locations);
    super.initState();
  }

  TextEditingController editingController = TextEditingController();
  var items = [];

  void filterSearchResults(String query) {
    items.clear();
    if (query.isEmpty) {
      items = List.from(widget.locations);
    }

    widget.locations.forEach(
      (userDetail) {
        if (userDetail.name.contains(query)) {
          items.add(userDetail);
        }
      },
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.isPanelOpen
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: TextField(
                    onChanged: (value) {
                      filterSearchResults(value);
                    },
                    controller: editingController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      suffixIcon: Icon(Icons.cancel_outlined),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.dividerColor,
                ),
                SizedBox(
                    height: 630,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 400,
                              height: 70,
                              child: ListTile(
                                leading: items[index].type == "isbike"
                                    ? Images.isbikeLogo
                                    : items[index].type == "beltur"
                                        ? SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: Images.belturLogo)
                                        : Icon(
                                            FontAwesomeIcons.wrench,
                                            color: Colors.orange,
                                          ),
                                title: Text('${items[index].name}'),
                                subtitle: Text(
                                    '${(Geolocator.distanceBetween(items[index].lat, items[index].lng, widget.userLocation.target.latitude, widget.userLocation.target.longitude) / 1000).round()} km'),
                              ),
                            ),
                            Divider(
                              color: AppColors.dividerColor,
                              indent: 20,
                              endIndent: 20,
                            )
                          ],
                        );
                      },
                    )),
              ],
            ),
          )
        : Container();
  }
}
