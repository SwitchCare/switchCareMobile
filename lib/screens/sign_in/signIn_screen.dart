import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/signIn_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign In",
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
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5)
              ],
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ])),
          child: SignInScreenBody()),
    );
  }
}
