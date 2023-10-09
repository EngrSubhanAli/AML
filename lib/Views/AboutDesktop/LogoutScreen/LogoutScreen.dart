import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_compliance/Views/AboutDesktop/ManageYourAccountScreen/ManageYourAccountScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/GoToLoginScreenButton.dart';
import 'package:global_compliance/res/LogoTextAml.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutSuccesfull.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 150.w,
          right: 150.w,
          top: 23.h,
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
                Spacer(),
                ButtonGoToGlobalCompliancePortal(),
                SizedBox(
                  width: 10.w,
                ),
                GoToLoginScreenButton(
                    text: "Logout from Identity",
                    w: 190,
                    h: 40,
                    colour: redColor),
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            Text(
              "Log out",
              style: TextStyle(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // wordSpacing: 30,
                  letterSpacing: 1.w),
            ),
            SizedBox(
              height: 57.h,
            ),
            kButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        LogoutSuccesfull(),
                    transitionDuration: Duration(milliseconds: 500),
                    // reverseTransitionDuration: Duration.zero,
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              h: 43,
              w: width * 0.5,
              textSiz: 15,
              text: "Click here to Logout",
              textColor: Colors.white,
              colour: blueAxent,
            ),
          ],
        ),
      ),
    );
  }
}
