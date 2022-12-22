import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/tabs/event/create_event.dart';
import 'package:bikemate/components/tabs/event/event_tile.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';

class EventTab extends StatelessWidget {
  final events;
  final location;
  const EventTab({
    this.events,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 530,
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: ListView.builder(
            itemCount: events.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return EventTile(
                event: events[index],
                location: location,
              );
            },
          ),
        ),
        Align(
          child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateEvent(),
                  ),
                );
              },
              child: Text(
                "Create Event",
                style: TextStyles.frontButtonStyle,
              ),
              style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.loginButtonColor)),
        )
      ],
    );
  }
}
