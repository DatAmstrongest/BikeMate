import 'package:bikemate/UI/images.dart';
import 'package:bikemate/components/navbars/navbar.dart';
import 'package:bikemate/components/post/post.dart';
import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const route = "/home";
  @override
  Widget build(BuildContext context) {
    const posts = [1, 2, 3, 4, 5];
    List<Widget> postWidgets = posts
        .map((name) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 7,
                  ),
                  child: Post(),
                ),
                Divider(color: AppColors.dividerColor),
              ],
            ))
        .toList();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor1,
      bottomNavigationBar: Navbar(selectedIndex: 2),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Images.smallestLogo,
              Text("BikeMate", style: TextStyles.homepageTitleStyle),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: AppColors.dividerColor,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: postWidgets),
            ),
          ),
        ],
      ),
    );
  }
}
