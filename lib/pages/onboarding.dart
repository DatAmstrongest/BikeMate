import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'flutter_walkthrough_screen.dart';
import 'welcome.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  static const route = "/";
  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("assets/images/pic1.jpg"),
      fit: BoxFit.cover,
      imageHeight: 290,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Here is your new favorite app ",
                style: TextStyles.frontTitleStyle),
            TextSpan(
              text: "\nBikeMate!",
              style: TextStyles.frontTitleStyle,
            ),
            TextSpan(text: "\nTry us", style: TextStyles.frontTitleStyle),
          ],
        ),
      ),
      descText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "Our app can help you bike freely with others anywhere you want. Socialize, meet new people and enjoy your ride!",
              style: TextStyles.frontTextStyle,
            ),
          ],
        ),
      ),
      descPadding: EdgeInsets.symmetric(horizontal: 22.0),
    ),
    OnbordingData(
      image: AssetImage("assets/images/pic3.jpg"),
      fit: BoxFit.cover,
      imageHeight: 250,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Everything about biking and more at \nyour ",
                style: TextStyles.frontTitleStyle),
            TextSpan(
              text: "service!",
              style: TextStyles.frontTitleStyle,
            ),
          ],
        ),
      ),
      descText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "24x7 help available for all your requirements! Increase your biking knowledge and passion! Check our map for detailed information about specific locations, tools and routes.",
              style: TextStyles.frontTextStyle,
            ),
          ],
        ),
      ),
      descPadding: EdgeInsets.symmetric(horizontal: 22.0),
    ),
    OnbordingData(
      image: AssetImage("assets/images/pic2.jpg"),
      fit: BoxFit.cover,
      imageHeight: 290,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Don't doubt \nand ", style: TextStyles.frontTitleStyle),
            TextSpan(
              text: "pedal it out! ",
              style: TextStyles.frontTitleStyle,
            ),
          ],
        ),
      ),
      descText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "Explore new or popular bike routes and rate them, write your personal experiences and suggestions, upload pictures! You can check out the new biking events and step your game up!",
              style: TextStyles.frontTextStyle,
            ),
          ],
        ),
      ),
      descPadding: EdgeInsets.symmetric(horizontal: 22.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      onbordingDataList: list,
      colors: [],
      pageRoute: MaterialPageRoute(
        builder: (context) => Welcome(),
      ),
      lastButton: CircleAvatar(
        backgroundColor: Color.fromRGBO(2, 232, 147, 1),
        child: Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Color.fromRGBO(2, 232, 147, 1),
        ),
      ),
      selectedDotColor: Color.fromRGBO(2, 232, 147, 1),
      unSelectdDotColor: Colors.white,
    );
  }
}
