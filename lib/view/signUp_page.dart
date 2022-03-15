import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:twitter_clone/view/control_view.dart';
import 'package:twitter_clone/view/login_page.dart';
import 'package:twitter_clone/view/welcome_page.dart';
import 'package:twitter_clone/view/widgets/custom_button.dart';
import 'package:twitter_clone/view/widgets/custom_regular_text_form_field.dart';
import 'package:twitter_clone/view/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../constants.dart';

class SignUpPage extends StatelessWidget {
  String? name, password, email, userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'images/logo.png',
            color: primaryColor,
            height: 45,
            width: 45,
          ),
          elevation: 0,
          leading: TextButton(
            onPressed: () => Get.offAll(() => const WelcomePage()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Cancel',
                fontSize: 20,
                color: primaryColor,
              ),
            ),
          ),
          leadingWidth: 100),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30, 10),
          child: Column(
            children: [
              CustomText(
                text: 'Create your account',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
              const SizedBox(
                height: 50.0,
              ),
              TextFormField(
                  cursorColor: primaryColor,
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: primaryColor),
                  onChanged: (value) {
                    name = value;
                  }),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  cursorColor: primaryColor,
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      hintText: 'User Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: primaryColor),
                  onChanged: (value) {
                    userName = value;
                  }),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  cursorColor: primaryColor,
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: primaryColor),
                  onChanged: (value) {
                    email = value;
                  }),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  cursorColor: primaryColor,
                  style: const TextStyle(
                    color: primaryColor,
                  ),
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: primaryColor),
                  onChanged: (value) {
                    password = value;
                  }),
              const SizedBox(
                height: 50.0,
              ),
              CustomButton(
                  onPressed: () {
                    Get.offAll(() => ControlView());
                  },
                  text: 'Sign Up')
            ],
          ),
        )),
      ),
    );
  }
}
