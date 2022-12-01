import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/navbar.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  static const route = "/profile";
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
                      AssetImage("assets/images/profilePhoto1.jpg"),
                ),
                Positioned(
                  right: 10,
                  top: 120,
                  child: CircleAvatar(
                    backgroundColor: AppColors.addImageBackgroundColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  "Murat Germen",
                  style: TextStyles.profileBoldTextStyle,
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(Icons.edit_outlined),
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
            Divider(
              indent: 2,
              endIndent: 2,
              color: AppColors.dividerColor,
            ),
            SizedBox(height: 10),
            Icon(
              Icons.grid_on,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: newArr
                      .map((e) => Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  children: [Images.smallPostImage],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 20,
                                  bottom: 10,
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
            )
          ],
        ),
      ),
    );
  }
}
