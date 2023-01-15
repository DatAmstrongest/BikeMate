import 'package:bikemate/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images {
  static const path = "assets/images/";

  //****** Logos ******//

  static Widget biggerLogo = SvgPicture.asset(
    path + "logos/" + "biggerLogo.svg",
    color: AppColors.logoColor2,
    semanticsLabel: 'A red up arrow',
  );
  static Widget smallerLogo = SvgPicture.asset(
    path + "logos/" + "smallerLogo.svg",
    color: AppColors.logoColor2,
    semanticsLabel: 'A red up arrow',
  );

  static Widget smallestLogo = SvgPicture.asset(
    path + "logos/" + "smallestLogo.svg",
    color: AppColors.logoColor1,
    semanticsLabel: 'A red up arrow',
  );

  static Widget belturLogo = Container(
    child: SvgPicture.asset(
      path + "logos/" + "belturLogo.svg",
      height: 100,
      fit: BoxFit.contain,
    ),
    height: 100,
    width: 100,
  );

  static Widget disabledBelturLogo = Container(
    child: SvgPicture.asset(
      color: Colors.black,
      path + "logos/" + "belturLogo.svg",
      height: 100,
      fit: BoxFit.contain,
    ),
    height: 100,
    width: 100,
  );

  static Widget isbikeLogo = Image.asset(
    path + "logos/" + "isbikeLogo.png",
  );

  static Widget disabledIsbikeLogo = ColorFiltered(
    colorFilter: ColorFilter.matrix(<double>[
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]),
    child: isbikeLogo,
  );

  //****** Profile ******//

  static Widget avatarImage = Image.asset(
    path + "profile/" + "avatar.jpg",
  );

  static Widget profileImage1 = Image.asset(
    path + "profile/" + "profilePhoto1.jpg",
    fit: BoxFit.fill,
  );

  static Widget participantPhoto1 = Image.asset(
    path + "profile/" + "participantPhoto1.jpg",
    width: 75,
    height: 75,
    fit: BoxFit.fill,
  );

  static Widget participantPhoto2 = Image.asset(
    path + "profile/" + "participantPhoto2.jpg",
    width: 75,
    height: 75,
    fit: BoxFit.fill,
  );

  static Widget participantPhoto3 = Image.asset(
    path + "profile/" + "participantPhoto3.jpg",
    width: 75,
    height: 75,
    fit: BoxFit.fill,
  );

  static Widget participantPhoto4 = Image.asset(
    path + "profile/" + "participantPhoto4.jpg",
    width: 75,
    height: 75,
    fit: BoxFit.fill,
  );

  static Widget profileImage2 =
      Image.asset(path + "profile/" + "profilePhoto2.jpg");

  static Widget smallerProfileImage2 =
      Image.asset(path + "profile/" + "smallerProfilePhoto2.jpg");

  //****** Posts ******//
  static Widget postImage = Image.asset(
    path + "postPhoto.jpg",
    fit: BoxFit.contain,
  );
  static Widget smallPostImage = Image.asset(
    path + "smallPostPhoto.png",
    width: 138,
    height: 138,
    fit: BoxFit.fill,
  );

  static Widget postPhoto1 = Image.asset(
    path + "post/" + "postPhoto1.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto2 = Image.asset(
    path + "post/" + "postPhoto2.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto3 = Image.asset(
    path + "post/" + "postPhoto3.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto4 = Image.asset(
    path + "post/" + "postPhoto4.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto5 = Image.asset(
    path + "post/" + "postPhoto5.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto6 = Image.asset(
    path + "post/" + "postPhoto6.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto7 = Image.asset(
    path + "post/" + "postPhoto7.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto8 = Image.asset(
    path + "post/" + "postPhoto8.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  static Widget postPhoto9 = Image.asset(
    path + "post/" + "postPhoto9.jpg",
    width: 138,
    height: 138,
    fit: BoxFit.contain,
  );

  //****** Locations ******//
  static Widget location1 =
      Image.asset(path + "locations/" + "location1.jpg", fit: BoxFit.fill);
  static Widget location2 =
      Image.asset(path + "locations/" + "location2.jpg", fit: BoxFit.fill);
  static Widget location3 =
      Image.asset(path + "locations/" + "location3.jpg", fit: BoxFit.fill);
  static Widget location4 =
      Image.asset(path + "locations/" + "location4.jpg", fit: BoxFit.fill);
  static Widget location5 =
      Image.asset(path + "locations/" + "location5.jpg", fit: BoxFit.fill);
  static Widget location6 =
      Image.asset(path + "locations/" + "location6.jpg", fit: BoxFit.fill);

  //****** Events ******//
  static Widget event1 = Image.asset(
    path + "events/" + "event1.jpg",
    height: 100,
    width: 120,
    fit: BoxFit.cover,
  );
  static Widget event2 = Image.asset(
    path + "events/" + "event2.jpg",
    height: 100,
    width: 120,
    fit: BoxFit.cover,
  );
  static Widget event3 = Image.asset(
    path + "events/" + "event3.jpg",
    height: 100,
    width: 120,
    fit: BoxFit.cover,
  );
  static Widget event4 = Image.asset(
    path + "events/" + "event4.jpg",
    height: 100,
    width: 120,
    fit: BoxFit.cover,
  );
}
