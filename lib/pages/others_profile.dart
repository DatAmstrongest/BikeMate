import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OthersProfile extends StatelessWidget {
  const OthersProfile({Key? key}) : super(key: key);
  static const route = "/othersProfile";
  @override
  Widget build(BuildContext context) {
    final newArr = [
      [1, 2],
      [2, 3],
      [3, 4],
      [6, 7],
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor1,
      bottomNavigationBar: Navbar(
        selectedIndex: 4,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text("My Profile", style: TextStyles.profileTitleTextStyle),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage:
                      AssetImage("assets/images/profile/profilePhoto2.jpg"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Metehan Koç",
                  style: TextStyles.profileBoldTextStyle,
                ),
                SizedBox(width: 15),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_add_outlined),
                  label: Text("Follow"),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        AppColors.sendTextButtonColor),
                    foregroundColor: MaterialStatePropertyAll<Color>(
                        AppColors.standardTextColor),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.paperPlane),
                  label: Text("Text"),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        AppColors.sendTextButtonColor),
                    foregroundColor: MaterialStatePropertyAll<Color>(
                        AppColors.standardTextColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: 2,
              endIndent: 2,
              color: AppColors.dividerColor,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    child: Column(
                      children: [
                        Text(
                          "120",
                          style: TextStyles.profileNumberStyle,
                        ),
                        Text(
                          "Followers",
                          style: TextStyles.profileTextStyle,
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.dividerColor,
                    endIndent: 30,
                  ),
                  Container(
                    width: 80,
                    child: Column(
                      children: [
                        Text(
                          "112",
                          style: TextStyles.profileNumberStyle,
                        ),
                        Text(
                          "Comments",
                          style: TextStyles.profileTextStyle,
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.dividerColor,
                    endIndent: 30,
                  ),
                  Container(
                    width: 80,
                    child: Column(
                      children: [
                        Text(
                          "95",
                          style: TextStyles.profileNumberStyle,
                        ),
                        Text(
                          "Likes",
                          style: TextStyles.profileTextStyle,
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.dividerColor,
                    endIndent: 30,
                  ),
                  Container(
                    width: 80,
                    child: Column(
                      children: [
                        Text(
                          "35",
                          style: TextStyles.profileNumberStyle,
                        ),
                        Text(
                          "Posts",
                          style: TextStyles.profileTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: newArr
                        .map((e) => Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    children: [Images.smallPostImage],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    children: [Images.smallPostImage],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 1,
                                    right: 1,
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    children: [Images.smallPostImage],
                                  ),
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
