import 'package:firebase_flutter_project/screens/SignUpScreen/signup.dart';
import 'package:firebase_flutter_project/screens/loginScreen/login.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
