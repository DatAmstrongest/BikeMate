import 'package:flutter/material.dart';

import 'package:bikemate/pages/home.dart';
import 'package:bikemate/pages/login.dart';
import 'package:bikemate/pages/signup.dart';
import 'package:bikemate/pages/map.dart';
import 'package:bikemate/pages/others_profile.dart';
import 'package:bikemate/pages/profile.dart';
import 'package:bikemate/pages/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        Welcome.route: (context) => const Welcome(),
        Login.route: (context) => const Login(),
        Map.route: (context) => const Map(),
        OthersProfile.route: (context) => const OthersProfile(),
        Profile.route: (context) => const Profile(),
        SignUp.route: (context) => const SignUp(),
        Home.route: (context) => const Home(),
      },
    ),
  );
}
