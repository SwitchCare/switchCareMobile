import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/connection_lost/connection_lost.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/sign_in/signIn_screen.dart';
import 'package:shop_app/screens/sign_up/signup_screen.dart';
import 'package:shop_app/screens/splash/components/checkConnection.dart';

import 'package:shop_app/screens/splash/splash_screens.dart';

//We use name routes
//All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ConnectionLostScreen.routeName: (context) => ConnectionLostScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  CheckConnection.routeName: (context) => CheckConnection(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen()
};
