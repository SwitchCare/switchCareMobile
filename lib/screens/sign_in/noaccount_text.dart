import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/signup_screen.dart';

import '../../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16), color: Colors.white),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16), color: Colors.white),
          ),
        ),
      ],
    );
  }
}
