import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/GoToRegisterButton.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/ForgotYourPassword/ForgotYourPasswordScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/InvitedForVarificationFirstScreen/InvitedForVarificationFirstScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/ManageYourAccountScreen/ManageYourAccountScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/RegisterAsANewUser/RegisterAsANewUser.dart';
import '../../../Repositories/Api_Calls/Api_Calls.dart';

// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MzhkN2I1MzJjNTIzZWRhNTNjNTE1NTUiLCJpZEFkbWluIjpmYWxzZSwidmVyaWZ5IjpmYWxzZSwibmFtZSI6IkZhcnJ1a2giLCJlbWFpbCI6ImZhcnJ1a2hoYXlhdDkyMEBnbWFpbC5jb20iLCJjb250YWN0IjoiMDMzMjUwMTAxNjgiLCJwYXNzd29yZCI6IiQyYSQxMCRBb3RXVVo1enNEVEtJSHdrMm1tZUJ1am5HUy9QVk5zaUxScXB0T3gvbEhwS0ZqRTZYcW9WQyIsImNyZWF0ZWRBdCI6IjIwMjItMTItMDVUMDU6MDI6MTEuMjU3WiIsInVwZGF0ZWRBdCI6IjIwMjItMTItMDVUMDU6MDI6MTEuMjU3WiIsIl9fdiI6MCwiaWF0IjoxNjcwMjMzNjk3LCJleHAiOjE3MDE3Njk2OTd9.lGw2xbS_V-j9GvcHj9KDDRv0L3M6F_mgmKPrInxHN9w
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var value = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ApiCallService statesServices = ApiCallService();

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
                  KText(
                    text: 'Log in',
                    width: width,
                    fw: FontWeight.w500,
                    fs: width * 0.040,
                    colour: blackColors,
                  ),
                  // Center(
                  //   child: Image.asset(
                  //     "assets/images/appLogoImage.png",
                  //     scale: 4,
                  //     // color: whiteColors,
                  //   ),
                  // ),
                  SizedBox(
                    height: 35.h,
                  ),

                  SizedBox(
                    height: 35.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: KText(
                      text: 'Email',
                      width: width,
                      fs: width * 0.012,
                      colour: blackColors,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  KTextFieldwithShadow(textEditingController: emailController),
                  SizedBox(
                    height: 25.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: KText(
                      text: 'Password',
                      width: width,
                      fs: width * 0.012,
                      colour: blackColors,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  KTextFieldwithShadow(
                      textEditingController: passwordController),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                        checkColor: whiteColors,
                        activeColor: blueAxent,
                        value: value,
                        onChanged: (bool? newValue) {
                          // onChanged(newValue);

                          setState(() {
                            value = newValue!;
                          });
                        },
                      ),
                      KText(
                        text: "Remember me?",
                        width: width,
                        fs: width * 0.012,
                        colour: blueAxent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  kButton(
                    onPressed: () {
                      statesServices.login(emailController.text.toString(),
                          passwordController.text.toString());
                      print(emailController.text.toString());
                      print(passwordController.text.toString());

                      Navigator.push(
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
                    h: 48,
                    w: 100,
                    text: "Login",
                    textColor: Colors.white,
                    colour: blueAxent,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: whiteColors,
                        highlightColor: whiteColors,
                        hoverColor: whiteColors,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  ForgotYourPasswordScreen(),
                              transitionDuration: Duration(milliseconds: 500),
                              // reverseTransitionDuration: Duration.zero,
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c),
                            ),
                          );
                        },
                        child: KText(
                          text: "Forgot your password?",
                          width: width,
                          fs: width * 0.012,
                          colour: blueAxent,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      // Spacer(),
                      InkWell(
                        splashColor: whiteColors,
                        highlightColor: whiteColors,
                        hoverColor: whiteColors,
                        onTap: () {
                          Navigator.pushReplacement(
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
                        child: KText(
                          text: "Register as a new User",
                          width: width,
                          fs: width * 0.012,
                          colour: blueAxent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  kButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                InvitedForVarificationThroughGmail(),
                            transitionDuration: Duration(milliseconds: 500),
                            // reverseTransitionDuration: Duration.zero,
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ),
                        );
                      },
                      h: 47,
                      w: 350,
                      text: "Go to Verifications Screens Dummy Btn",
                      textColor: whiteColors,
                      colour: blueAxent),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 20.h),
                child: GoToRegisterButton(),
              ),
            ],
          )),
    );
  }
}
