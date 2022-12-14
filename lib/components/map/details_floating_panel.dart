import 'package:bikemate/components/tabs/comment_tab.dart';
import 'package:bikemate/components/tabs/photo_tab.dart';
import 'package:bikemate/pages/locations.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DetailsFloatingPanel extends StatelessWidget {
  final Location location;
  Function changeDetails;
  DetailsFloatingPanel({required this.location, required this.changeDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location.name,
                      style: TextStyles.profileBoldTextStyle,
                    ),
                    IconButton(
                      onPressed: () {
                        changeDetails(false, location);
                      },
                      iconSize: 30,
                      color: Colors.grey,
                      icon: Icon(Icons.cancel),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  location.address,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
                DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Photo'),
                          Tab(text: 'Comments'),
                          Tab(text: 'Active Events'),
                        ],
                      ),
                      Container(
                        height: 590,
                        child: TabBarView(children: <Widget>[
                          PhotoTab(images: location.images),
                          CommentTab(comments: location.comments),
                          Text("ad"),
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
