import 'dart:typed_data';

import 'package:firebase_flutter_project/home/home.dart';
import 'package:firebase_flutter_project/resources/auth.dart';
import 'package:firebase_flutter_project/screens/SignUpScreen/components/circleLinks.dart';
import 'package:firebase_flutter_project/screens/loginScreen/login.dart';
import 'package:firebase_flutter_project/widgets/customOutlineDecoration.dart';
import 'package:firebase_flutter_project/widgets/customPrefixIcon.dart';
import 'package:firebase_flutter_project/widgets/customSuffxIcon.dart';
import 'package:firebase_flutter_project/widgets/defaulButton.dart';
import 'package:firebase_flutter_project/widgets/footer.dart';
import 'package:firebase_flutter_project/widgets/imagePicker.dart';
import 'package:firebase_flutter_project/widgets/snakeBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _userFullNameController = TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userCampusController = TextEditingController();
  final TextEditingController _userDepartmentController =
      TextEditingController();
  final TextEditingController _userCPasswordController =
      TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userFullNameController.dispose();
    _userEmailController.dispose();
    _userDepartmentController.dispose();
    _userCampusController.dispose();
    _userPasswordController.dispose();
    _userCPasswordController.dispose();
  }

  Uint8List? _selectedImage;
  bool isImage = false;
  bool loading = false;
  bool passwordObsure = true;
  bool cPasswordObsure = true;
  final _formKey = GlobalKey<FormState>();
  selectedImage() async {
    setState(() {
      isImage = true;
    });
    Uint8List image = await pickImage(source: ImageSource.gallery);
    setState(() {
      isImage = false;
      _selectedImage = image;
    });
  }

  submitUser() async {
    setState(() {
      loading = true;
    });
    String res = await AuthMethods().createUser(
      email: _userEmailController.text,
      fullName: _userFullNameController.text,
      password: _userPasswordController.text,
      campus: _userCampusController.text,
      department: _userDepartmentController.text,
      profilePic: _selectedImage!,
    );
    if (res == "Success") {
      setState(() {
        loading = false;
      });
      Navigator.pushNamed(context, Home.routeName);
      showSnakeBar("Welcome to the class room.", context);
    } else {
      setState(() {
        loading = false;
      });
      showSnakeBar(res, context);
    }
    showSnakeBar(res, context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              child: isImage
                  ? LinearProgressIndicator(
                      color: Colors.teal,
                    )
                  : Divider(
                      thickness: 2,
                      color: Color(0xFFBEBEBE),
                    ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              selectedImage();
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 50.h,
                  backgroundImage: _selectedImage == null
                      ? null
                      : MemoryImage(
                          _selectedImage!,
                        ),
                ),
                Positioned(
                  bottom: -5,
                  right: 5,
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[50],
                    ),
                    child: Lottie.asset(
                      "assets/svg/camera.json",
                    ),
                  ),
                ),
              ],
            ),
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
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _userEmailController,
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
                  controller: _userFullNameController,
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
                  obscureText: passwordObsure,
                  controller: _userPasswordController,
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
                    suffixIcon: suffixicon(
                        icon: Icons.remove_red_eye_outlined,
                        press: () {
                          setState(() {
                            passwordObsure = !passwordObsure;
                          });
                        }),
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
                  obscureText: cPasswordObsure,
                  controller: _userCPasswordController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: suffixicon(
                        icon: Icons.remove_red_eye_outlined,
                        press: () {
                          setState(() {
                            cPasswordObsure = !cPasswordObsure;
                          });
                        }),
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
                  controller: _userCampusController,
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
                  controller: _userDepartmentController,
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
                loading
                    ? Chip(
                        label: LinearProgressIndicator(),
                      )
                    : defaultButton(
                        text: "Sign Up",
                        press: () async {
                          if (_userPasswordController.text ==
                                  _userCPasswordController.text &&
                              _userEmailController.text.isNotEmpty &&
                              _userCampusController.text.isNotEmpty &&
                              _userFullNameController.text.isNotEmpty &&
                              _userDepartmentController.text.isNotEmpty) {
                            submitUser();
                          } else {
                            showSnakeBar("All Fields are required.", context);
                          }
                        },
                        color: Colors.teal,
                      ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
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
    );
  }
}
