import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddComment extends StatelessWidget {
  final locationName;
  const AddComment({this.locationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor2,
        leading: IconButton(
          icon: Icon(
            size: 30,
            Icons.close,
            color: AppColors.navbarSelectedIconColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(locationName),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Publish", style: TextStyles.addCommentPublishStyle),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: RatingBar.builder(
              itemPadding: EdgeInsets.symmetric(horizontal: 15),
              initialRating: 2.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Share your experience",
                border: OutlineInputBorder(),
              ),
              maxLines: 5, // <-- SEE HERE
              minLines: 5, // <-- SEE HERE
            ),
          )
        ],
      ),
    );
  }
}
