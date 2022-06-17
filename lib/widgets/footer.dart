import 'package:flutter/material.dart';

Row footer({
  required String text,
  required VoidCallback press,
  required String linkText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      TextButton(
        onPressed: press,
        child: Text(
          linkText,
          style: TextStyle(color: Colors.yellow[600]),
        ),
      ),
    ],
  );
}
