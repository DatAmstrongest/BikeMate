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
              children: <TextSpan>[
                TextSpan(
                  text: 'kocmetehan, NisaDefneAksu, HasanYılmaz ',
                  style: TextStyles.homepageBoldTextStyle,
                ),
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
                  text: 'Caddebostan event',
                  style: TextStyles.homepageBoldTextStyle,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
