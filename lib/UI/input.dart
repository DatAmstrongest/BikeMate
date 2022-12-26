import 'package:bikemate/styles/app_colors.dart';
import 'package:bikemate/styles/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final label;
  final hintText;
  final isPassword;
  final double height;
  var _passwordVisible = false;

  Input({this.label, this.hintText, this.isPassword, required this.height});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyles.frontLabelStyle,
        ),
        SizedBox(
          height: widget.height,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: TextFormField(
              obscureText: widget._passwordVisible,
              decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          icon: widget._passwordVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () => {
                            setState(() => {
                                  widget._passwordVisible =
                                      !widget._passwordVisible
                                })
                          },
                        )
                      : null,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: AppColors.inputBorderColor,
                    ),
                  ),
                  filled: true,
                  fillColor: AppColors.inputBackgroundColor,
                  hintText: widget.hintText,
                  hintStyle: TextStyles.frontHintStyle),
            ),
          ),
        ),
      ],
    );
  }
}
