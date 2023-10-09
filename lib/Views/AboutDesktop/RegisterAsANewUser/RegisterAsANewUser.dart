import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/ManageYourAccountScreen/ManageYourAccountScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/GoToLoginScreenButton.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';

import '../../../Repositories/Api_Calls/Api_Calls.dart';

class RegisterAsANewUserScreen extends StatelessWidget {
  RegisterAsANewUserScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ApiCallService apiCallService = ApiCallService();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColors,
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width / 2,
                color: blueAxent,
                child: Center(
                  child: Image.asset(
                    "assets/images/appLogoImage.PNG",
                    scale: 2,
                    color: whiteColors,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 75.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: KText(
                      text: 'Register',
                      width: width,
                      fw: FontWeight.w500,
                      fs: width * 0.025,
                      colour: blackColors,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create a new account.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 27.sp),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email', style: TextStyle(fontSize: 17.sp))),
                  SizedBox(
                    height: 12.h,
                  ),
                  KTextFieldwithShadow(
                    textEditingController: emailController,
                    // w: 310,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Name', style: TextStyle(fontSize: 17.sp))),
                  SizedBox(
                    height: 12.h,
                  ),
                  KTextFieldwithShadow(
                    textEditingController: nameController,
                    // w: 310,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text('Contact', style: TextStyle(fontSize: 17.sp))),
                  SizedBox(
                    height: 12.h,
                  ),
                  KTextFieldwithShadow(
                    textEditingController: contactController,
                    // w: 310,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          Text('Password', style: TextStyle(fontSize: 17.sp))),
                  SizedBox(
                    height: 12.h,
                  ),
                  KTextFieldwithShadow(
                    textEditingController: passwordController,
                    // w: 310,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  kButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              ManageYourAccountScreen(),
                          transitionDuration: Duration(milliseconds: 500),
                          // reverseTransitionDuration: Duration.zero,
                          transitionsBuilder: (_, a, __, c) =>
                              FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    colour: blueAxent,
                    textColor: whiteColors,
                    text: "Register",
                    h: 48,
                    w: 100,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 20.h),
                child: GoToLoginScreenButton(
                  h: 40,
                  text: "Login",
                ),
              ),
            ]),
      ),
    );
  }
}
