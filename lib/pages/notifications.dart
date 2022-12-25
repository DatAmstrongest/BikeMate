import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:bikemate/components/notification/notification_approved.dart';
import 'package:bikemate/components/notification/notification_invite.dart';
import 'package:bikemate/components/notification/notification_like.dart';
import 'package:bikemate/components/notification/notificaton_request.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  static const route = "/notifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor1,
      bottomNavigationBar: Navbar(selectedIndex: 3),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Images.smallestLogo,
              ),
              Text(
                "BikeMate",
                style: TextStyles.notificationBrandStyle,
              )
            ],
          ),
          Divider(
            color: AppColors.dividerColor,
            indent: 2,
            endIndent: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Notifications",
            style: TextStyles.notificationTitleStyle,
          ),
          SizedBox(
            height: 20,
          ),
          NotificationRequest(
            username: "kocmetehan",
          ),
          NotificationInvite(
            username: "HasanYılmaz",
            event: "Florya Shore",
          ),
          NotificationApproved(
            username: "kocmetehan",
          ),
          NotificationLike(
            username: "HasanYılmaz",
            postImage: Images.postImage,
          ),
          NotificationLike(
            username: "NisaDefneAksu",
            postImage: Images.postImage,
          ),
          NotificationInvite(
            username: "NisaDefneAksu",
            event: "Bostancı",
          ),
          NotificationInvite(
            username: "BikeLover98",
            event: "Caddebostan",
          ),
          NotificationApproved(
            username: "BikeLover98",
          ),
        ],
      ),
    );
  }
}
