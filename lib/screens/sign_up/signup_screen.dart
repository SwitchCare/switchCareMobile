import 'package:flutter/material.dart';

import 'signup_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF73AEF5), Color(0xFF73AEF5)],
          )),
        ),
      ),
      body: SignUpBody(),
    );
  }
}
