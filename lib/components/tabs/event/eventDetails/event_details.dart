import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EventDetails extends StatelessWidget {
  final event;
  final location;
  const EventDetails({this.event, this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: AppColors.backgroundColor1,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(340),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: event.photo.image,
                ),
              ),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(340),
                ),
              ),
            ),
            Positioned(
              left: 50,
              right: 30,
              top: 75,
              child: Text(
                event.title,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Positioned(
              left: -260,
              right: 30,
              top: 163,
              child: Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 80,
              right: 30,
              top: 163,
              child: Text(
                location.address,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50,
              right: 30,
              top: 215,
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    DateFormat('dd MMMM – kk:mm').format(event.startDate),
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 300,
              child: Text(
                "Participants",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              height: 120,
              left: 5,
              right: 20,
              top: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var participant in event.participants)
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: ClipOval(child: participant.profilePhoto),
                    ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              right: 30,
              top: 475,
              child: Text(
                event.description,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Positioned(
                height: 60,
                left: 50,
                right: 50,
                top: 700,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.loginButtonColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Join Event",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.hintTextColor,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
