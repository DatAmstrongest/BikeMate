import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images {
  static const path = "assets/images/";

  static Widget biggerLogo = SvgPicture.asset(
    path + "biggerLogo.svg",
    color: AppColors.logoColor,
    semanticsLabel: 'A red up arrow',
  );
  static Widget smallerLogo = SvgPicture.asset(
    path + "smallerLogo.svg",
    color: AppColors.logoColor,
    semanticsLabel: 'A red up arrow',
  );

  //****** Images ******//
  static Widget profileImage1 = Image.asset(path + "profilePhoto1.jpg");
  static Widget profileImage2 = Image.asset(path + "profilePhoto2.jpg");
  static Widget postImage = Image.asset(
    path + "postPhoto.jpg",
    fit: BoxFit.cover,
  );
}
