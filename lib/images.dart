import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images {
  static const path = "assets/images/";

  static Widget brandLogo = SvgPicture.asset(
    path + "Logo.svg",
    color: AppColors.logoColor,
    semanticsLabel: 'A red up arrow',
  );

  //****** Images ******//
  static Widget profileImage1 = Image.asset(path + "profilePhoto1.jpg");
  static Widget profileImage2 = Image.asset(path + "profilePhoto2.jpg");
  static Widget postImage = Image.asset(path + "postPhoto.jpg");

  //****** Icons ******//

  static const homeIcon = Icon(
    Icons.home_outlined,
    color: AppColors.navbarIconColor,
  );
  static const selectedHomeIcon = Icon(
    Icons.home_outlined,
    color: AppColors.navbarSelectedIconColor,
  );

  static const searchIcon = Icon(
    Icons.search_outlined,
    color: AppColors.navbarIconColor,
  );
  static const selectedSearchIcon = Icon(
    Icons.search_outlined,
    color: AppColors.navbarSelectedIconColor,
  );

  static const compassIcons = Icon(
    Icons.explore_outlined,
    color: AppColors.navbarIconColor,
  );
  static const selectedCompassIcons = Icon(
    Icons.explore_outlined,
    color: AppColors.navbarSelectedIconColor,
  );

  static const notificationIcon = Icon(
    Icons.notifications_outlined,
    color: AppColors.navbarIconColor,
  );
  static const selectedNotificationIcon = Icon(
    Icons.notifications_outlined,
    color: AppColors.navbarSelectedIconColor,
  );

  static const profileIcon = Icon(
    Icons.person_outline,
    color: AppColors.navbarIconColor,
  );
  static const selectedProfileIcon = Icon(
    Icons.person_outline,
    color: AppColors.navbarSelectedIconColor,
  );
}
