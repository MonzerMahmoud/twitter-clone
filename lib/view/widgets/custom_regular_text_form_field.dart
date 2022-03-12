import 'package:flutter/material.dart';
import 'package:twitter_clone/constants.dart';

import 'custom_text.dart';

class CustomRegularTextFormField extends StatelessWidget {
  const CustomRegularTextFormField({
    this.text = '',
    this.hintText = '',
    this.onChanged,
  });
  final String text;
  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  CustomText(
        //     text: text,
        //     fontSize: 20,
        //     color: primaryColor,
        //   ),
        TextFormField(
            cursorColor: primaryColor,
            style: const TextStyle(
              color: primaryColor,
            ),
            decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: primaryColor),
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                fillColor: primaryColor),
            onChanged: (value) {
              onChanged;
            }),
      ],
    );
  }
}
