import 'package:firebase_flutter_project/screens/SignUpScreen/components/circleLinks.dart';
import 'package:firebase_flutter_project/screens/loginScreen/login.dart';
import 'package:firebase_flutter_project/widgets/defaulButton.dart';
import 'package:firebase_flutter_project/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/customOutlineDecoration.dart';
import '../../../widgets/customPrefixIcon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 99.0.h,
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 800,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: SizedBox(
                    width: 20.w,
                    child: Divider(
                      thickness: 2,
                      color: Color(0xFFBEBEBE),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Let’s Get In for explore continues",
                  style: TextStyle(
                    color: Color(0xFF969AA8),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    circleBoxLinks(
                      press: () {},
                      imageURL: "assets/svg/apple.svg",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    circleBoxLinks(
                      press: () {},
                      imageURL: "assets/svg/google.svg",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    circleBoxLinks(
                      press: () {},
                      imageURL: "assets/svg/apple.svg",
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.email_outlined,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.person_outline,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.lock_outline,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.lock_outline,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.cast_for_education,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Campus",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: customPrefixIcon(
                      iconData: Icons.developer_board,
                      iconColor: Colors.black,
                    ),
                    enabledBorder: customOutlineDecoration(),
                    border: customOutlineDecoration(),
                    focusedBorder: customOutlineDecoration(),
                    fillColor: Colors.black.withOpacity(0.04),
                    filled: true,
                    hintText: "Department",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                defaultButton(
                  text: "Sign Up",
                  press: () {},
                  color: Colors.teal,
                ),
                SizedBox(
                  height: 5,
                ),
                footer(
                  linkColor: Colors.teal,
                  text: "Already have an account?",
                  press: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  linkText: " Sign In",
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
