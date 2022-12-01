import 'package:bikemate/UI/images.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NotificationApproved extends StatelessWidget {
  final username;
  const NotificationApproved({
    this.username,
  });

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
              RichText(
                maxLines: 2,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: username,
                    style: TextStyles.notificationBoldTextStyle,
                  ),
                  TextSpan(
                    text: ' approved your follow request.',
                    style: TextStyles.notificationTextStyle,
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
