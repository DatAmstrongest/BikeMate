import 'package:bikemate/components/tabs/comment/comment_tab.dart';
import 'package:bikemate/components/tabs/event/event_tab.dart';
import 'package:bikemate/components/tabs/photo_tab.dart';
import 'package:bikemate/pages/locations.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsFloatingPanel extends StatelessWidget {
  final Location location;
  final currentLocation;
  Function changeDetails;
  Function drawRoute;

  DetailsFloatingPanel({
    required this.location,
    required this.changeDetails,
    required this.drawRoute,
    this.currentLocation,
  });

  @override
  Widget build(BuildContext context) {
    int totalRate = 0;
    for (var comment in location.comments) {
      totalRate += comment.rate as int;
    }
    var averateRate = totalRate / location.comments.length;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor1,
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
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            averateRate.toString(),
                          ),
                          RatingBarIndicator(
                            rating: averateRate,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                          ),
                          Text(
                            "${location.comments.length} reviews",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.navbarBackgroundColor,
                  ),
                  icon: Icon(
                    Icons.directions,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () async {
                    await drawRoute(currentLocation, location);
                  },
                  label: Text("Directions",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
                SizedBox(height: 10),
                DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: AppColors.loginButtonColor,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Photos'),
                          Tab(text: 'Reviews'),
                          Tab(text: 'Events'),
                        ],
                      ),
                      Container(
                        height: 590,
                        child: TabBarView(children: <Widget>[
                          PhotoTab(images: location.images),
                          CommentTab(
                            comments: location.comments,
                            locationName: location.name,
                          ),
                          EventTab(
                            events: location.events,
                            location: location,
                          ),
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
