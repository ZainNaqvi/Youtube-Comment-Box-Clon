import 'package:firebase_flutter_project/screens/SignUpScreen/components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/signUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 124, 136),
      body: SingleChildScrollView(child: SafeArea(child: Body())),
    );
  }
}
