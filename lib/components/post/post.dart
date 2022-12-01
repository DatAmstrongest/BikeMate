import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/post/carousel.dart';
import 'package:bikemate/components/post/post_text.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:face_pile/face_pile.dart';
import 'package:like_button/like_button.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(child: Images.avatarImage),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                top: 5,
              ),
              width: 330,
              child: PostText(),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 130,
          child: Carousel(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Row(
            children: [
              LikeButton(
                size: 23,
                countPostion: CountPostion.bottom,
                likeBuilder: (bool isLiked) {
                  return isLiked
                      ? Icon(Icons.favorite,
                          color: AppColors.navbarBackgroundColor)
                      : Icon(
                          Icons.favorite_outline,
                        );
                },
              ),
              SizedBox(
                width: 5,
              ),
              LikeButton(
                size: 23,
                countPostion: CountPostion.bottom,
                likeBuilder: (bool isLiked) {
                  return Icon(Icons.chat_bubble_outline);
                },
              ),
            ],
          ),
        ),
        Text(
          "300 likes",
          style: TextStyles.homepageBoldTextStyle,
        ),
        SizedBox(height: 3),
        RichText(
          text: TextSpan(
            text: 'kocmetehan ',
            style: TextStyles.homepageBoldTextStyle,
            children: <TextSpan>[
              TextSpan(
                text: 'Lorem ipsum dolor sit amet, consec... ',
                style: TextStyles.homepageTextStyle,
              ),
              TextSpan(
                text: "more",
                style: TextStyles.viewCommentsTextStyle,
              )
            ],
          ),
        ),
        SizedBox(height: 3),
        Text(
          "View all 50 comments",
          style: TextStyles.viewCommentsTextStyle,
        ),
      ],
    );
  }
}
