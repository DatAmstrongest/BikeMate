import 'package:bikemate/components/profile/tabs/event/expansion_event.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:bikemate/pages/locations.dart';
import 'package:flutter/material.dart';

class EventTab extends StatefulWidget {
  @override
  State<EventTab> createState() => _EventTabState();
}

class _EventTabState extends State<EventTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionEvent(
            title: "Current Events",
            events: Location.locations[0].events.sublist(0, 2),
            location: Location.locations[0],
          ),
          SizedBox(
            height: 10,
          ),
          ExpansionEvent(
            title: "Previous Events",
            events: Location.locations[2].events.sublist(2, 4),
            location: Location.locations[2],
          ),
        ],
      ),
    );
  }
}
