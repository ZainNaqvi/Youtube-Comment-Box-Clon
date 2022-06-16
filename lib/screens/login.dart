import 'package:firebase_flutter_project/widgets/customOutlineDecoration.dart';
import 'package:firebase_flutter_project/widgets/customPrefixIcon.dart';
import 'package:firebase_flutter_project/widgets/customSuffxIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  bool checkBoxIsSelected = false;
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.w,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _userEmailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: customPrefixIcon(
                          iconData: Icons.email,
                        ),
                        enabledBorder: customOutlineDecoration(),
                        border: customOutlineDecoration(),
                        focusedBorder: customOutlineDecoration(),
                        fillColor: Color.fromARGB(82, 116, 234, 255),
                        filled: true,
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _userPasswordController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: suffixicon(
                          icon: Icons.remove_red_eye,
                        ),
                        prefixIcon: customPrefixIcon(
                          iconData: Icons.lock,
                        ),
                        enabledBorder: customOutlineDecoration(),
                        border: customOutlineDecoration(),
                        focusedBorder: customOutlineDecoration(),
                        fillColor: Color.fromARGB(82, 116, 234, 255),
                        filled: true,
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Remember me
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          splashRadius: 10,
                          fillColor: MaterialStateProperty.all(
                            Color.fromARGB(82, 116, 234, 255),
                          ),
                          value: checkBoxIsSelected,
                          onChanged: (value) {
                            setState(
                              () {
                                checkBoxIsSelected = !checkBoxIsSelected;
                              },
                            );
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                        minimumSize: Size(293.w, 54.h),
                        primary: Color(0xFFF56B3F),
                      ),
                      onPressed: () {},
                      child: Text("Sign in"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "Or Continue with",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Colors.white,
                              ),
                              minimumSize: Size(130.w, 48.h)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                                SvgPicture.asset("assets/svg/googleButton.svg"),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: BorderSide(
                                color: Colors.white,
                              ),
                              minimumSize: Size(130.w, 48.h)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset("assets/svg/fbButton.svg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.yellow[600]),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
