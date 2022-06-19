import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home Screen'),
      ),
    );
  }
}
