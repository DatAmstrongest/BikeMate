import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    final fieldText = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 45,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: TextFormField(
              textAlign: TextAlign.left,
              controller: fieldText,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 10,
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: (() {
                      fieldText.clear();
                    }),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: AppColors.inputBorderColor,
                    ),
                  ),
                  filled: true,
                  fillColor: AppColors.inputBackgroundColor,
                  hintText: "Search",
                  hintStyle: TextStyles.searchlightStyle),
            ),
          ),
        ),
      ],
    );
  }
}
