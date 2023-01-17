import 'package:bikemate/components/tabs/event/event.dart';
import 'package:bikemate/components/tabs/event/event_tile.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ExpansionEvent extends StatefulWidget {
  final title;
  final events;
  final location;
  const ExpansionEvent({
    this.title,
    this.events,
    this.location,
  });

  @override
  State<ExpansionEvent> createState() => _ExpansionEventState();
}

class _ExpansionEventState extends State<ExpansionEvent> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: AppColors.loginButtonColor,
      collapsedTextColor: AppColors.navbarBackgroundColor,
      collapsedIconColor: AppColors.navbarBackgroundColor,
      backgroundColor: AppColors.navbarBackgroundColor,
      textColor: AppColors.loginButtonColor,
      iconColor: AppColors.loginButtonColor,
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      children: widget.events
          .map<Widget>(
            (event) => EventTile(
              event: event,
              location: widget.location,
            ),
          )
          .toList(),
    );
  }
}
