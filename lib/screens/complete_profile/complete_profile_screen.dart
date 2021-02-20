import 'package:flutter/material.dart';

import 'complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
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
      body: CompleteProfileBody(),
    );
  }
}
