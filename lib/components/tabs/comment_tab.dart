import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommentTab extends StatelessWidget {
  final comments;
  const CommentTab({this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 540,
          child: ListView.builder(
            // Let the ListView know how many items it needs to build.
            itemCount: comments.length,
            // Provide a builder function. This is where the magic happens.
            // Convert each item into a widget based on the type of item it is.
            itemBuilder: (context, index) {
              final item = comments[index];
              return ListTile(
                leading: item.image,
                title: Text(item.username),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: item.rate.toDouble(),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 15.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(item.date),
                      ],
                    ),
                    Text(item.comment),
                  ],
                ),
              );
            },
          ),
        ),
        OutlinedButton(
            onPressed: () {},
            child: Text(
              "Add Comment",
              style: TextStyles.frontButtonStyle,
            ),
            style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.loginButtonColor))
      ],
    );
  }
}
