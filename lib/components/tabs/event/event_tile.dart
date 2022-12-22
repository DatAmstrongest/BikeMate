import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/tabs/event/event_details.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EventTile extends StatelessWidget {
  final event;
  final location;
  const EventTile({this.event, this.location});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetails(
              event: event,
              location: location,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.navbarBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 16),
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      event.title,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          DateFormat('dd MMMM – kk:mm').format(event.startDate),
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    RatingBarIndicator(
                      rating: event.participants.length.toDouble(),
                      itemBuilder: (context, index) => Icon(
                        Icons.person,
                        color: AppColors.navbarSelectedIconColor,
                      ),
                      itemCount: 5,
                      itemSize: 17.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                child: event.photo),
          ],
        ),
      ),
    );
  }
}
