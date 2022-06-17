import 'package:firebase_flutter_project/screens/loginScreen/components/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 124, 136),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      key: Key("fdadsfa"),
                      top: 0.h,
                      right: 0.w,
                      child: SvgPicture.asset(
                        "assets/svg/rightImage.svg",
                      ),
                    ),
                    Positioned(
                      key: Key("fda"),
                      left: MediaQuery.of(context).size.width / 3,
                      top: 90.h,
                      child: SvgPicture.asset(
                        "assets/svg/centerImage.svg",
                      ),
                    ),
                    Positioned(
                      key: Key("TExt"),
                      left: 72.w,
                      top: 250.h,
                      child: Text(
                        "Continue with email for sign in App",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Positioned(
                      key: Key("fdadsdfasfad"),
                      left: 0.w,
                      top: 181.h,
                      child: SvgPicture.asset(
                        "assets/svg/leftImage.svg",
                      ),
                    ),
                  ],
                ),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
