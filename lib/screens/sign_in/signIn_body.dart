import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/size_config.dart';

import 'form_error.dart';
import 'noaccount_text.dart';

class SignInScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign in with your email and password \n or continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool _rememberme = false;
  String email;
  String password;
  bool showDialog = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    showDialog = true;
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    showDialog = true;
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF6CA8F1),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 60.0,
            child: TextFormField(
              obscureText: true,
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kPassNullError)) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                } else if (value.length >= 8 &&
                    errors.contains(kShortPassError)) {
                  setState(() {
                    errors.remove(kShortPassError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kPassNullError)) {
                  setState(() {
                    showDialog = true;
                    errors.add(kPassNullError);
                  });
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
                  setState(() {
                    showDialog = true;
                    errors.add(kShortPassError);
                  });
                }
                return null;
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: "Enter your password",
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: <Widget>[
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: _rememberme,
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _rememberme = value;
                    });
                  },
                ),
              ),
              Text(
                "Remember me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5.0,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  if (errors.isEmpty) {
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.LEFTSLIDE,
                        body: Center(child: Text('LOGIN SUCCESS')),
                        title: 'Dialog Title',
                        desc: 'Dialog description here',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          Navigator.pop(context);
                        }).show();
                  }
                }
              },
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: Colors.white,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Color(0xFF527DAA),
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(
                icon: "assets/icons/facebook-2.svg",
                press: () {},
              ),
              SocialCard(
                icon: "assets/icons/google-icon.svg",
                press: () {},
              ),
              SocialCard(
                icon: "assets/icons/twitter.svg",
                press: () {},
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          NoAccountText()
        ],
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
