import 'package:bikemate/UI/images.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NotificationLike extends StatelessWidget {
  final username;
  final postImage;
  const NotificationLike({
    this.username,
    this.postImage,
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
              SizedBox(
                width: 200,
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: username,
                        style: TextStyles.notificationBoldTextStyle,
                      ),
                      TextSpan(
                        text: ' liked your photo',
                        style: TextStyles.notificationTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 50,
                width: 90,
                child: this.postImage,
              )
            ],
          ),
        )
      ],
    );
  }
}
