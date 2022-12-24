import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'flutter_walkthrough_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'welcome.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);
  void loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("firstLogin", true);
  }

  static const route = "/";

  final List<OnbordingData> list = [
    OnbordingData(
      image: Svg('assets/images/walkthrough/pic1.svg',
          color: AppColors.navbarIconColor),
      fit: BoxFit.cover,
      imageHeight: 410,
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
      image: Svg(
        'assets/images/walkthrough/pic3.svg',
        color: AppColors.navbarIconColor,
      ),
      fit: BoxFit.cover,
      imageHeight: 400,
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
      image: Svg(
        'assets/images/walkthrough/pic2.svg',
        color: AppColors.navbarIconColor,
      ),
      fit: BoxFit.cover,
      imageHeight: 400,
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
    loadPreferences();
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
