import 'package:firebase_flutter_project/screens/SignUpScreen/components/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: SignupForm(),
        ),
      ),
    );
  }
}
