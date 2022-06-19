import 'package:flutter/material.dart';

Widget suffixicon({
  required IconData icon,
  required VoidCallback press,
}) {
  return InkWell(
    onTap: press,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
      child: Icon(
        icon,
        size: 30,
      ),
    ),
  );
}
