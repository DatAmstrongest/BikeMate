import 'package:bikemate/pages/flutter_walkthrough_screen.dart';
import 'package:bikemate/pages/notifications.dart';
import 'package:bikemate/pages/onboarding.dart';
import 'package:bikemate/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bikemate/pages/home.dart';
import 'package:bikemate/pages/login.dart';
import 'package:bikemate/pages/signup.dart';
import 'package:bikemate/pages/map.dart';
import 'package:bikemate/pages/others_profile.dart';
import 'package:bikemate/pages/profile.dart';
import 'package:bikemate/pages/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var firstLogin;
  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    firstLogin = prefs.getBool('firstLogin') == null
        ? false
        : prefs.getBool('firstLogin');
  }

  await loadPreferences();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: firstLogin == false || firstLogin == null
          ? OnBoarding.route
          : Welcome.route,
      routes: {
        OnBoarding.route: (context) => OnBoarding(),
        Welcome.route: (context) => const Welcome(),
        Login.route: (context) => const Login(),
        Map.route: (context) => Map(),
        OthersProfile.route: (context) => const OthersProfile(),
        Profile.route: (context) => const Profile(),
        SignUp.route: (context) => const SignUp(),
        Home.route: (context) => const Home(),
        Notifications.route: (context) => const Notifications(),
        Search.route: (context) => const Search(),
      },
    ),
  );
}
