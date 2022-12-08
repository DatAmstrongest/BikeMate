import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Walkthrough',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("images/pic1.jpg"),
      fit: BoxFit.cover,
      imageHeight: 290,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Here is your new favorite app ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            TextSpan(
              text: "\nBikeMate!",
              style: TextStyle(
                  color: Color.fromRGBO(2, 232, 147, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
            ),
            TextSpan(
                text: "\nTry us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
      descPadding: EdgeInsets.symmetric(horizontal: 22.0),
    ),
    OnbordingData(
      image: AssetImage("images/pic3.jpg"),
      fit: BoxFit.cover,
      imageHeight: 250,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Everything about biking and more at \nyour ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            TextSpan(
              text: "service!",
              style: TextStyle(
                  color: Color.fromRGBO(2, 232, 147, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
      descPadding: EdgeInsets.symmetric(horizontal: 22.0),
    ),
    OnbordingData(
      image: AssetImage("images/pic2.jpg"),
      fit: BoxFit.cover,
      imageHeight: 290,
      titleText: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: "Don't doubt \nand ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
            TextSpan(
              text: "pedal it out! ",
              style: TextStyle(
                  color: Color.fromRGBO(2, 232, 147, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
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
        builder: (context) => NextPage(),
      ),
      lastButton: CircleAvatar(
        backgroundColor: Color.fromRGBO(2, 232, 147, 1),
        child: Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
      nextButton: CircleAvatar(
        backgroundColor: Color.fromRGBO(2, 232, 147, 1),
        child: Icon(
          Icons.arrow_forward,
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
