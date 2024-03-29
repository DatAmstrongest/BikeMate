import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:bikemate/components/profile/tabs/event/event_tab.dart';
import 'package:bikemate/components/profile/tabs/photoTab.dart';
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
                      AssetImage("assets/images/profile/profilePhoto1.jpg"),
                ),
                Positioned(
                  right: 10,
                  top: 120,
                  child: CircleAvatar(
                    backgroundColor: AppColors.addImageBackgroundColor,
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          backgroundColor: AppColors.navbarBackgroundColor,
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 150,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Change your picture:',
                                      style: TextStyles.sheetTextStyle,
                                    ),
                                    Text(
                                      '                ',
                                      style: TextStyles.profileTextStyle,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          IconButton(
                                              icon: Icon(
                                                  Icons.camera_alt_outlined,
                                                  color: AppColors
                                                      .addImageBackgroundColor,
                                                  size: 35),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: AppColors
                                                      .addImageBackgroundColor)),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          IconButton(
                                              icon: Icon(Icons.image,
                                                  color: AppColors
                                                      .addImageBackgroundColor,
                                                  size: 35),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: AppColors
                                                      .addImageBackgroundColor)),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          IconButton(
                                              icon: Icon(Icons.delete,
                                                  color: AppColors
                                                      .addImageBackgroundColor,
                                                  size: 35),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              style: IconButton.styleFrom(
                                                  foregroundColor: AppColors
                                                      .addImageBackgroundColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
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
                IconButton(
                  icon: Icon(Icons.edit_outlined),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: AppColors.navbarBackgroundColor,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                //Text('                ', style: TextStyles.profileTextStyle,),
                                Text(
                                  'Enter your name:',
                                  style: TextStyles.sheetTextStyle,
                                ),
                                Text(
                                  '                ',
                                  style: TextStyles.profileTextStyle,
                                ),
                                Text(
                                  '|________________________',
                                  style: TextStyles.sheetTextStyle,
                                ),
                                Text(
                                  '                                ',
                                  style: TextStyles.profileTextStyle,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      ElevatedButton(
                                          child: Text(
                                            '  Save  ',
                                            style: TextStyles.profileTextStyle,
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: AppColors
                                                  .addImageBackgroundColor)),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      ElevatedButton(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyles.profileTextStyle,
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: AppColors
                                                  .addImageBackgroundColor)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
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
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    labelColor: AppColors.loginButtonColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(
                        icon: Icon(Icons.location_on),
                      ),
                    ],
                  ),
                  Container(
                    height: 346,
                    child: TabBarView(
                      children: [
                        PhotoTab(),
                        EventTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
