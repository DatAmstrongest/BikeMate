import 'package:bikemate/pages/home.dart';
import 'package:bikemate/pages/map.dart';
import 'package:bikemate/pages/notifications.dart';
import 'package:bikemate/pages/profile.dart';
import 'package:bikemate/pages/search.dart';
import 'package:bikemate/pages/welcome.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  late var selectedIndex;

  Navbar({this.selectedIndex});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void _onItemTapped(int index) {
    Navigator.pushNamed(context, routes[index]);
  }

  final routes = [
    Map.route,
    Search.route,
    Home.route,
    Notifications.route,
    Profile.route
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      backgroundColor: AppColors.navbarBackgroundColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'EventMap',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: AppColors.navbarSelectedIconColor,
      unselectedItemColor: AppColors.navbarIconColor,
      onTap: _onItemTapped,
    );
  }
}
