import 'package:bikemate/pages/login.dart';
import 'package:bikemate/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:bikemate/UI/images.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  static const route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.backgroundColor2, AppColors.backgroundColor1],
          ),
        ),
        padding: EdgeInsets.only(top: 112),
        child: Column(
          children: [
            Text("Welcome to BikeMate!", style: TextStyles.frontTitleStyle),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Images.biggerLogo,
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1),
                        backgroundColor: AppColors.loginButtonColor,
                      ),
                      child: Text("Login", style: TextStyles.frontTextStyle),
                      onPressed: () =>
                          {Navigator.pushNamed(context, Login.route)},
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1),
                        backgroundColor: AppColors.signUpButtonColor,
                      ),
                      child: Text("Sign Up", style: TextStyles.frontTextStyle),
                      onPressed: () =>
                          {Navigator.pushNamed(context, SignUp.route)},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
