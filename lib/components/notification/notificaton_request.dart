import 'package:bikemate/UI/images.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NotificationRequest extends StatelessWidget {
  final username;
  const NotificationRequest({this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.dividerColor,
          indent: 2,
          endIndent: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              ClipOval(
                child: Images.avatarImage,
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 150,
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: username,
                      style: TextStyles.notificationBoldTextStyle,
                    ),
                    TextSpan(
                      text: ' requested to follow you',
                      style: TextStyles.notificationTextStyle,
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 35,
                width: 80,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.confirmButtonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  child: Text("Confirm",
                      style: TextStyles.notificationButtonTextStyle),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 35,
                width: 80,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.deleteButtonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Delete",
                    style: TextStyles.notificationButtonTextStyle,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
