import 'package:flutter/material.dart';

class FloatingPanel extends StatelessWidget {
  final isPanelOpen;
  const FloatingPanel({this.isPanelOpen});

  @override
  Widget build(BuildContext context) {
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
}
