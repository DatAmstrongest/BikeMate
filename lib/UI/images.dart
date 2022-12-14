import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images {
  static const path = "assets/images/";

  static Widget biggerLogo = SvgPicture.asset(
    path + "biggerLogo.svg",
    color: AppColors.logoColor2,
    semanticsLabel: 'A red up arrow',
  );
  static Widget smallerLogo = SvgPicture.asset(
    path + "smallerLogo.svg",
    color: AppColors.logoColor2,
    semanticsLabel: 'A red up arrow',
  );

  static Widget smallestLogo = SvgPicture.asset(
    path + "smallestLogo.svg",
    color: AppColors.logoColor1,
    semanticsLabel: 'A red up arrow',
  );

  static Widget belturLogo = Container(
      child: SvgPicture.asset(
    path + "belturLogo.svg",
    fit: BoxFit.fill,
  ));

  static Widget disabledBelturLogo = Container(
      child: SvgPicture.asset(
    color: Colors.black,
    path + "belturLogo.svg",
    fit: BoxFit.fill,
  ));

  static Widget isbikeLogo = Image.asset(
    "assets/images/isbikeLogo.png",
  );

  static Widget disabledIsbikeLogo = ColorFiltered(
    colorFilter: ColorFilter.mode(
      Colors.grey,
      BlendMode.saturation,
    ),
    child: isbikeLogo,
  );

  //****** Images ******//

  static Widget avatarImage = Image.asset(
    path + "avatar.jpg",
  );

  static Widget profileImage1 = Image.asset(
    path + "profilePhoto1.jpg",
  );

  static Widget profileImage2 = Image.asset(path + "profilePhoto2.jpg");

  static Widget smallerProfileImage2 =
      Image.asset(path + "smallerProfilePhoto2.jpg");

  static Widget postImage = Image.asset(
    path + "postPhoto.jpg",
    fit: BoxFit.contain,
  );
  static Widget smallPostImage = Image.asset(
    path + "smallPostPhoto.png",
    fit: BoxFit.cover,
  );

  //Locations
  static Widget location1 =
      Image.asset(path + "location1.jpg", fit: BoxFit.fill);
  static Widget location2 =
      Image.asset(path + "location2.jpg", fit: BoxFit.fill);
  static Widget location3 =
      Image.asset(path + "location3.jpg", fit: BoxFit.fill);
  static Widget location4 =
      Image.asset(path + "location4.jpg", fit: BoxFit.fill);
  static Widget location5 =
      Image.asset(path + "location5.jpg", fit: BoxFit.fill);
  static Widget location6 =
      Image.asset(path + "location6.jpg", fit: BoxFit.fill);
}
