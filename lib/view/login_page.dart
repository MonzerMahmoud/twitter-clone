import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/constants.dart';
import 'package:twitter_clone/view/control_view.dart';
import 'package:twitter_clone/view/widgets/custom_text.dart';
import 'package:twitter_clone/view/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'welcome_page.dart';
import 'widgets/custom_button.dart';

class LogInPage extends StatelessWidget {
  String? name, password, email, userName;
  var data = {'email': 'John@Doe.com', 'password': 'password'};

  // Starting Web API Call.
  Future postData() async {
    var response = await http.post(
        Uri.parse("https://nameless-beyond-22038.herokuapp.com/login"),
        body: json.encode(data)); // REMOVED [email]
    print(response.body);
    print(response.statusCode);
  }

  // Map<String, String> body = {
  //  'email': 'email',
  //  'password': 'password',
  // };
  // Future postData() async {
  //   try {
  //     var response = await http.post(
  //       Uri.parse("https://nameless-beyond-22038.herokuapp.com/login"),
  //       body: body
  //     );
  //     if (response.statusCode == 200) {
  //       Get.offAll(() => ControlView());
  //     } else {
  //       print(response.statusCode);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Log in to Twitter',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ],
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
                    postData();
                  },
                  text: 'Log In')
            ],
          ),
        )),
      ),
    );
  }
}
