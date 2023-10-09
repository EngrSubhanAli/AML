import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/GoToLoginScreenButton.dart';
import 'package:global_compliance/res/GoToRegisterButton.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';

class ForgotYourPasswordScreen extends StatefulWidget {
  const ForgotYourPasswordScreen({super.key});

  @override
  State<ForgotYourPasswordScreen> createState() =>
      _ForgotYourPasswordScreenState();
}

class _ForgotYourPasswordScreenState extends State<ForgotYourPasswordScreen> {
  var value = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 233.w,
            right: 220.w,
            top: 15.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/appLogoImage.PNG",
                    scale: 5,
                    color: blueAxent,
                  ),
                  // LogoTextAML(width: width),
                  Spacer(),
                  GoToLoginScreenButton(
                    text: "Login",
                    w: 70,
                    h: 40,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GoToRegisterButton(
                    btnColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              KText(
                text: 'Forgot your password?',
                width: width,
                fw: FontWeight.w500,
                fs: width * 0.026,
                colour: blackColors,
              ),

              SizedBox(
                height: 12.h,
              ),
              KText(
                text: 'Enter your email.',
                width: width,
                fs: width * 0.016,
                colour: blackColors,
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(),
              SizedBox(
                height: 35.h,
              ),
              KText(
                text: 'Email',
                width: width,
                fs: width * 0.011,
                colour: blackColors,
              ),
              SizedBox(
                height: 12.h,
              ),
              KTextFieldwithShadow(),
              SizedBox(
                height: 25.h,
              ),

              kButton(
                h: 48,
                w: 77,
                text: "Submit",
                textColor: Colors.white,
                colour: blueAxent,
              ),
              SizedBox(
                height: 20.h,
              ),
              // HoverContainer(
              //   width: 200,
              //   height: 50,
              //   hoverHeight: 120,
              //   hoverWidth: 350,
              //   color: Colors.red,
              //   hoverColor: Colors.green,
              //   child: Text("HoverContainer"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
