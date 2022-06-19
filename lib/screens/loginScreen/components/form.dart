import 'package:firebase_flutter_project/home/home.dart';
import 'package:firebase_flutter_project/resources/auth.dart';
import 'package:firebase_flutter_project/screens/SignUpScreen/signup.dart';
import 'package:firebase_flutter_project/screens/loginScreen/components/horizontalDIvider.dart';
import 'package:firebase_flutter_project/screens/loginScreen/components/sociallinks.dart';
import 'package:firebase_flutter_project/widgets/customOutlineDecoration.dart';
import 'package:firebase_flutter_project/widgets/customPrefixIcon.dart';
import 'package:firebase_flutter_project/widgets/customSuffxIcon.dart';
import 'package:firebase_flutter_project/widgets/defaulButton.dart';
import 'package:firebase_flutter_project/widgets/footer.dart';
import 'package:firebase_flutter_project/widgets/snakeBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userEmailController.dispose();
    _userPasswordController.dispose();
  }

  bool checkBoxIsSelected = false;
  bool isobScure = true;
  bool loading = false;
  submitForm() async {
    setState(() {
      loading = true;
    });
    String res = await AuthMethods().login(
      email: _userEmailController.text,
      password: _userPasswordController.text,
    );

    if (res == "Success") {
      setState(() {
        loading = false;
      });
      Navigator.pushNamed(context, Home.routeName);
      showSnakeBar("Login to the class room successfully.", context);
    } else {
      setState(() {
        loading = false;
      });
      showSnakeBar(res, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                iconColor: Color(0xFFFFFFFF).withOpacity(
                  0.7,
                ),
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
            height: 14.h,
          ),
          TextFormField(
            obscureText: isobScure,
            controller: _userPasswordController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              suffixIcon: suffixicon(
                press: () {
                  setState(() {
                    isobScure = !isobScure;
                  });
                },
                icon: Icons.remove_red_eye,
              ),
              prefixIcon: customPrefixIcon(
                iconData: Icons.lock,
                iconColor: Color(0xFFFFFFFF).withOpacity(
                  0.7,
                ),
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
            height: 14.h,
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
                width: 5.w,
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
            height: 14.h,
          ),
          loading
              ? LinearProgressIndicator()
              : defaultButton(
                  color: Color(0xFFF56B3F),
                  text: "Sign in",
                  press: () {
                    submitForm();
                  },
                ),
          SizedBox(
            height: 20.h,
          ),
          horizontalDivider(),
          SizedBox(
            height: 20.h,
          ),
          socialLinkLogin(),
          SizedBox(
            height: 20.h,
          ),
          footer(
            linkColor: Colors.orange,
            color: Colors.white,
            text: "Don’t have account?",
            linkText: " Sign up",
            press: () {
              Navigator.of(context).pushNamed(SignUpScreen.routeName);
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
