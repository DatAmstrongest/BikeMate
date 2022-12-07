import 'package:bikemate/UI/images.dart';
import 'package:bikemate/UI/searchbar.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:bikemate/components/search_data.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  static const route = "/search";

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          bottomNavigationBar: Navbar(selectedIndex: 1),
          backgroundColor: AppColors.backgroundColor1,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(
                      Icons.search_outlined,
                      size: 40,
                    ),
                  ),
                  Text(
                    "Search",
                    style: TextStyles.searchTitleStyle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Searchbar(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      bottom: 10,
                    ),
                    child: Text(
                      "50 Results",
                      style: TextStyles.searchSubtitleStyle,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                children: [
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                  SearchData(
                    username: "kocmetehan",
                    bio: "Loves nature and cycling",
                    photo: Images.smallerProfileImage2,
                  ),
                ],
              )))
            ],
          )),
    );
  }
}
