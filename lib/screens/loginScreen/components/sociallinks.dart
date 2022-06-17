import 'package:firebase_flutter_project/widgets/customOutlinedbutton.dart';
import 'package:flutter/material.dart';

Row socialLinkLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      customOutLinedBUtton(
        press: () {},
        imageURl: "assets/svg/googleButton.svg",
      ),
      SizedBox(
        width: 17,
      ),
      customOutLinedBUtton(
        press: () {},
        imageURl: "assets/svg/fbButton.svg",
      ),
    ],
  );
}
