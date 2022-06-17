import 'package:firebase_flutter_project/screens/SignUpScreen/signup.dart';
import 'package:firebase_flutter_project/screens/loginScreen/components/horizontalDIvider.dart';
import 'package:firebase_flutter_project/screens/loginScreen/components/sociallinks.dart';
import 'package:firebase_flutter_project/widgets/customOutlineDecoration.dart';
import 'package:firebase_flutter_project/widgets/customPrefixIcon.dart';
import 'package:firebase_flutter_project/widgets/customSuffxIcon.dart';
import 'package:firebase_flutter_project/widgets/defaulButton.dart';
import 'package:firebase_flutter_project/widgets/footer.dart';
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
  bool checkBoxIsSelected = false;
  bool isobScure = true;
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
            height: 20,
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
          defaultButton(
            text: "Sign in",
            press: () {
              print(_userEmailController.text);
              print(_userPasswordController.text);
            },
          ),
          SizedBox(
            height: 20,
          ),
          horizontalDivider(),
          SizedBox(
            height: 40,
          ),
          socialLinkLogin(),
          SizedBox(
            height: 31,
          ),
          footer(
            text: "Don’t have account?",
            linkText: "Sign up",
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
