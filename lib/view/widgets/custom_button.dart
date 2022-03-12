
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: primaryColor,border:Border.all(color: Colors.white,width: 5)  ),
            
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: onPressed,
            child:
                Text(text, style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
          ),
        ));
  }
}
