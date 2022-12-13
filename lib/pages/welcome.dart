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

  static const route = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyles.frontTitleStyle),
            Text("to", style: TextStyles.frontTitleStyle),
            Text("BikeMate!", style: TextStyles.frontTitleStyle),
            Padding(
              padding: const EdgeInsets.only(top: 30),
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
                      child: Text("Login", style: TextStyles.frontButtonStyle),
                      onPressed: () =>
                          {Navigator.pushNamed(context, Login.route)},
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.signUpButtonColor)),
                      child:
                          Text("Sign Up", style: TextStyles.frontButtonStyle),
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
