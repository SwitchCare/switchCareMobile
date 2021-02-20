import 'package:flutter/material.dart';

import '../../size_config.dart';

class CompleteProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Text(
                    "Complete Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  CompleteProfileForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
