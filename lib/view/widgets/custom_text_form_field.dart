import 'package:flutter/material.dart';
import 'package:twitter_clone/constants.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.text = '',
    this.hintText = '',
  });
  final String text;
  final String hintText;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: primaryColor,borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
           style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            
            border: InputBorder.none,
              hintText: hintText,
             
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
              fillColor: Colors.white),
          onChanged: (value)=>value,
        ),
      ),
    );
  }
}
