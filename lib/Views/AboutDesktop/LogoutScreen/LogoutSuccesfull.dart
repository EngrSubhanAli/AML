import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_compliance/Views/AboutDesktop/RegisterAsANewUser/RegisterAsANewUser.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/LogoTextAml.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';

class LogoutSuccesfull extends StatelessWidget {
  const LogoutSuccesfull({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/appLogoImage.PNG",
                  scale: 5,
                  color: blueAxent,
                ),
                // LogoTextAML(width: width),
                // Image.asset('assets/images/logoName.png'),
                Spacer(),
                kButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            LoginScreen(),
                        transitionDuration: Duration(milliseconds: 500),
                        // reverseTransitionDuration: Duration.zero,
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  },
                  h: 35,
                  w: 65,
                  textSiz: 12,
                  text: "Login",
                  textColor: Colors.white,
                  colour: blueAxent,
                ),
                SizedBox(
                  width: 10.w,
                ),
                kButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              RegisterAsANewUserScreen(),
                          transitionDuration: Duration(milliseconds: 500),
                          // reverseTransitionDuration: Duration.zero,
                          transitionsBuilder: (_, a, __, c) =>
                              FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    h: 35,
                    w: 80,
                    textSiz: 12,
                    text: "Register",
                    textColor: Colors.white,
                    colour: Colors.green),
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
              height: 20.h,
            ),
            Text(
              "You have successfully logged out of the application.",
              style: TextStyle(
                  fontSize: 22.sp,
                  // fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // wordSpacing: 30,
                  letterSpacing: 1.w),
            ),
          ],
        ),
      ),
    );
  }
}
