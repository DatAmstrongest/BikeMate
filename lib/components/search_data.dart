import 'package:bikemate/UI/images.dart';
import 'package:bikemate/pages/others_profile.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchData extends StatelessWidget {
  final username;
  final bio;
  final photo;

  const SearchData({this.username, this.bio, this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Row(
            children: [
              IconButton(
                iconSize: 70,
                onPressed: () => {
                  Navigator.pushNamed(context, OthersProfile.route),
                },
                icon: ClipOval(
                  child: photo,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username, style: TextStyles.searchUsernameStyle),
                  Text(bio, style: TextStyles.searchBioStyle)
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: FaIcon(
                  FontAwesomeIcons.commentDots,
                  size: 45,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
