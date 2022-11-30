import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/material.dart';

class PostText extends StatelessWidget {
  const PostText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: RichText(
            maxLines: 2,
            text: TextSpan(
                text: 'kocmetehan, Nisa, Hasan ',
                style: TextStyles.homepageBoldTextStyle,
                children: <TextSpan>[
                  TextSpan(
                    text: 'and ',
                    style: TextStyles.homepageTextStyle,
                  ),
                  TextSpan(
                    text: 'others ',
                    style: TextStyles.homepageBoldTextStyle,
                  ),
                  TextSpan(
                    text: 'shared images from ',
                    style: TextStyles.homepageTextStyle,
                  ),
                  TextSpan(
                    text: 'Caddebost event',
                    style: TextStyles.homepageBoldTextStyle,
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
