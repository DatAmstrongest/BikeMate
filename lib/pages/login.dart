import 'package:bikemate/UI/input.dart';
import 'package:bikemate/images.dart';
import 'package:bikemate/pages/home.dart';
import 'package:bikemate/pages/login.dart';
import 'package:bikemate/pages/welcome.dart';
import 'package:bikemate/styles/app_colors.dart';

import 'package:flutter/gestures.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const route = "/login";
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
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              "Sign Up",
              style: TextStyles.frontTitleStyle,
            ),
            SizedBox(height: 20),
            Images.smallerLogo,
            const SizedBox(
              height: 10,
            ),
            Text(
              "BikeMate",
              style: TextStyles.frontBrandStyle,
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: 285,
              child: Input(
                label: "Email",
                hintText: "Please enter your email",
                isPassword: false,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 285,
              child: Input(
                label: "Password",
                hintText: "Please enter your password",
                isPassword: true,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 275,
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
                      onPressed: () => {
                        Navigator.pushNamed(context, Home.route),
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyles.frontLinkStyle,
                          children: <TextSpan>[
                            TextSpan(
                                text: '  Sign Up',
                                style: TextStyles.frontLinkBoldStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, Login.route);
                                    // navigate to desired screen
                                  })
                          ]),
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
