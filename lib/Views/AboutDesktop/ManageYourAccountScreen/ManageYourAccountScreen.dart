import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/GoToLoginScreenButton.dart';
import 'package:global_compliance/res/KTabButton.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';

class ManageYourAccountScreen extends StatefulWidget {
  const ManageYourAccountScreen({super.key});

  @override
  State<ManageYourAccountScreen> createState() =>
      _ManageYourAccountScreenState();
}

class _ManageYourAccountScreenState extends State<ManageYourAccountScreen> {
  int value = 0;

  setColor(int index) {
    print(index);
    if (index == 0) {
      setState(() {
        value = index;
      });
    } else if (index == 1) {
      setState(() {
        value = index;
      });
    } else if (index == 2) {
      setState(() {
        value = index;
      });
    } else {
      setState(() {
        value = 3;
      });
    }
  }

  bool ProfileUpdated = false;
  bool changePassword = false;
  int TwoFactorAuth = 0;
  bool ResetAuthenticatorContainer = false;
  bool DeletePersonalData = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: whiteColors,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 180.w,
                  right: 120.w,
                  top: 15.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(width: width),
                    SizedBox(
                      height: 37.h,
                    ),
                    KText(
                      text: 'Manage your account',
                      width: width,
                      fw: FontWeight.w500,
                      fs: width * 0.040,
                      colour: blackColors,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    KText(
                      text: 'Change your account settings',
                      width: width,
                      fs: width * 0.018,
                      colour: blackColors,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabsColumn(),
                        value == 0
                            ? ProfileTabData(width, context)
                            : value == 1
                                ? PasswordTabData(width, context)
                                : value == 2
                                    ? TwoFactorAuth == 0
                                        ? TwoFactorAuthData(width)
                                        : TwoFactorAuth == 1
                                            ? TwoFactorAuthenticationData(
                                                context, width)
                                            : SetAnResetAuthenticatorAppData(
                                                width, context)
                                    : value == 3
                                        ? DeletePersonalData == false
                                            ? PersonalDataColumn(width)
                                            : DeletePersonalDataColumn()
                                        : SizedBox()
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

  Padding TwoFactorAuthData(double width) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Two-factor authentication (2FA)",
            width: width,
            fs: width * 0.016,
            colour: blackColors,
            fw: FontWeight.w700,
          ),
          SizedBox(
            height: 15.h,
          ),
          KText(
            text: 'Authenticator app',
            width: width,
            fs: width * 0.015,
            colour: blackColors,
            fw: FontWeight.w600,
          ),
          SizedBox(
            height: 22.h,
          ),
          Row(
            children: [
              kButton(
                  onPressed: () {
                    setState(() {
                      TwoFactorAuth = 1;
                      ResetAuthenticatorContainer = false;
                    });
                  },
                  h: 40,
                  w: 230,
                  textSiz: width * 0.010,
                  text: "Set up authenticator app",
                  textColor: Colors.white,
                  colour: blueAxent),
              SizedBox(
                width: 5.h,
              ),
              kButton(
                  onPressed: () {
                    setState(() {
                      TwoFactorAuth = 2;
                    });
                  },
                  h: 40,
                  w: 230,
                  textSiz: width * 0.010,
                  text: "Reset authenticator app",
                  textColor: Colors.white,
                  colour: blueAxent),
            ],
          ),
        ],
      ),
    );
  }

  Padding PersonalDataColumn(double width) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Personal Data",
            width: width,
            fs: width * 0.018,
            colour: blackColors,
            fw: FontWeight.w600,
          ),
          SizedBox(
            height: 15.h,
          ),
          KText(
            text:
                'Your account contains personal data that you have given\nus. This page allows you to download or delete that\ndata.',
            width: width,
            fs: width * 0.012,
            colour: blackColors,
          ),
          SizedBox(
            height: 22.h,
          ),
          KText(
            text:
                "Deleting this data will permanently remove your\naccount, and this cannot be recovered.",
            width: width,
            fs: width * 0.012,
            colour: blackColors,
            fw: FontWeight.w600,
          ),
          SizedBox(
            height: 22.h,
          ),
          kButton(
              h: 40,
              w: 130,
              textSiz: 20.sp,
              text: "Download",
              textColor: Colors.white,
              colour: blueAxent),
          SizedBox(
            height: 15.h,
          ),
          kButton(
              onPressed: () {
                setState(() {
                  DeletePersonalData = true;
                });
              },
              h: 40,
              w: 90,
              textSiz: 20.sp,
              text: "Delete",
              textColor: Colors.white,
              colour: redColor),
        ],
      ),
    );
  }

  Padding SetAnResetAuthenticatorAppData(double width, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Reset authenticator key",
            width: width,
            fs: width * 0.018,
            colour: blackColors,
            fw: FontWeight.w700,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.7,
            height: MediaQuery.of(context).size.height / 4.5,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color.fromARGB(255, 243, 217, 183)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                KText(
                  text:
                      "If you reset your authenticator key your authenticator app will not work until you reconfigure it.",
                  width: width,
                  fs: width * 0.013,
                  colour: blackColors,
                  fw: FontWeight.bold,
                  wordSpacng: 2.0.w,
                ),
                SizedBox(
                  height: 30.h,
                ),
                KText(
                  text:
                      "This process disables 2FA until you verify your authenticator app. If you do not complete your authenticator app configuration you may lose access to your account.",
                  width: width,
                  fs: width * 0.011,
                  colour: lightGrey,
                  wordSpacng: 2.0.w,
                ),
                Text(
                  "This process disables 2FA until you verify your authenticator app. If you do not complete your authenticator app configuration you may lose access to your account.",
                  style: TextStyle(
                      fontSize: width * 0.011,
                      wordSpacing: 2.w,
                      color: lightGrey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          kButton(
            onPressed: () {
              setState(() {
                TwoFactorAuth = 1;
                ResetAuthenticatorContainer = true;
              });
            },
            h: 45,
            w: 230,
            textSiz: 15.sp,
            text: "Reset Authenticator App",
            textColor: Colors.white,
            colour: Colors.redAccent,
          ),
        ],
      ),
    );
  }

  Padding TwoFactorAuthenticationData(BuildContext context, double width) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResetAuthenticatorContainer
                ? Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    height: MediaQuery.of(context).size.height / 7.5,
                    margin: EdgeInsets.only(bottom: 15.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.01,
                      vertical: MediaQuery.of(context).size.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color.fromARGB(255, 199, 223, 203)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: KText(
                            text:
                                "Your authenticator app key has been reset, you will need to configure your authenticator app using the\nnew key.",
                            width: width,
                            fs: width * 0.011,
                            colour: darkGrey,
                            fw: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              ResetAuthenticatorContainer =
                                  !ResetAuthenticatorContainer;
                            });
                          },
                          child: Icon(Icons.cancel),
                        )
                      ],
                    ),
                  )
                : SizedBox(),
            Text(
              "Configure authenticator app",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  wordSpacing: 5.w,
                  fontSize: width * 0.018),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "To use an authenticator app go through the following steps:",
              style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  fontSize: width * 0.013),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "1 : Download a two-factor authenticator app like Microsoft Authenticator for Android and iOS or Google\n     Authenticator for Android and iOS.",
              style: TextStyle(fontSize: width * 0.013),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "2 : Scan the QR Code or enter this key tqqq ljb3 5ntz qvnx 2pht mjob fo6m qkgv into your two factor\n      authenticator app. Spaces and casing do not matter.",
              style: TextStyle(fontSize: width * 0.013),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: 200.h,
              child: Text(
                "QR Code Image Missing",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5.w,
                    fontSize: width * 0.017),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "3 : Once you have scanned the QR code or input the key above, your two factor authentication app will provide you\nwith a unique code. Enter the code in the confirmation box below.",
              style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  fontSize: width * 0.012),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Verification Code",
              style: TextStyle(wordSpacing: 5.w, fontSize: width * 0.016),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            KTextFieldwithShadow(
              w: 350,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GoToLoginScreenButton(
              text: "Varify",
              h: 40,
              w: 80,
              colour: blueAxent,
            ),
            // kButton(
            //     onPressed: () {
            //       Navigator.pushReplacement(
            //         context,
            //         MaterialPageRoute(builder: (context) => LoginScreen()),
            //       );
            //     },
            //     h: 40,
            //     w: 80,
            //     textSiz: 19.sp,
            //     text: "Varify",
            //     textColor: Colors.white,
            //     colour: Colors.blue),
            SizedBox(
              height: 30.h,
            )
          ]),
    );
  }

  Container PasswordTabData(double width, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Change password",
            width: width,
            fs: width * 0.018,
            colour: blackColors,
            fw: FontWeight.w700,
          ),
          changePassword
              ? Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.01,
                  ),
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.01,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color.fromARGB(255, 224, 235, 212)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: "Your password has been updated",
                            width: width,
                            fs: width * 0.015,
                            colour: lightGreen,
                          ),
                          InkWell(
                              onTap: (() {
                                setState(() {
                                  changePassword = false;
                                });
                              }),
                              child: Icon(Icons.cancel, color: lightGreen))
                        ],
                      ),
                    ],
                  ))
              : SizedBox(),
          SizedBox(
            height: 40.h,
          ),
          KText(
            text: 'Current password',
            width: width,
            fs: width * 0.011,
            colour: lightGrey,
          ),
          SizedBox(
            height: 5.h,
          ),
          KTextFieldwithShadow(
            w: 350,
          ),
          SizedBox(
            height: 30.h,
          ),
          KText(
            text: 'New password',
            width: width,
            fs: width * 0.011,
            colour: lightGrey,
          ),
          SizedBox(
            height: 5.h,
          ),
          KTextFieldwithShadow(
            w: 350,
          ),
          SizedBox(
            height: 30.h,
          ),
          KText(
            text: 'Confirm new password',
            width: width,
            fs: width * 0.011,
            colour: lightGrey,
          ),
          SizedBox(
            height: 5.h,
          ),
          KTextFieldwithShadow(
            w: 350,
          ),
          SizedBox(
            height: 30.h,
          ),
          kButton(
              onPressed: () {
                setState(() {
                  changePassword = true;
                });
              },
              h: 45,
              w: 160,
              textSiz: 17.sp,
              text: "Update Password",
              textColor: Colors.white,
              colour: blueAxent),
          SizedBox(
            height: 20.sp,
          )
        ],
      ),
    );
  }

  Container ProfileTabData(double width, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Profile",
            fw: FontWeight.w700,
            width: width,
            fs: width * 0.018,
            colour: blackColors,
          ),
          ProfileUpdated
              ? ProfileUpdatedSuccesfulContainer(context, width)
              : SizedBox(),
          SizedBox(
            height: 12.h,
          ),
          KText(
            text: "Username",
            width: width,
            fs: width * 0.011,
            colour: blackColors,
          ),
          SizedBox(
            height: 15.h,
          ),
          KTextFieldwithShadow(
            w: 350,
          ),
          SizedBox(
            height: 25.h,
          ),
          KText(
            text: 'Phone number',
            width: width,
            fs: width * 0.011,
            colour: blackColors,
          ),
          SizedBox(
            height: 12.h,
          ),
          KTextFieldwithShadow(
            w: 350,
          ),
          SizedBox(
            height: 15.h,
          ),
          kButton(
              onPressed: () {
                setState(() {
                  ProfileUpdated = !ProfileUpdated;
                });
              },
              h: 40,
              w: 73,
              textSiz: 20.sp,
              text: "Save",
              textColor: Colors.white,
              colour: blueAxent),
        ],
      ),
    );
  }

  Column TabsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setColor(0);
          },
          canRequestFocus: false,
          enableFeedback: false,
          child: kTabButton(
            h: 42,
            w: 300,
            text: 'Profile',
            recievedIndex: 0,
            colour: value == 0 ? blueAxent : whiteColors,
            textColor: value == 0 ? whiteColors : blueAxent,
          ),
        ),
        InkWell(
          onTap: () {
            setColor(1);
            setState(() {
              DeletePersonalData == false;
            });
          },
          canRequestFocus: false,
          enableFeedback: false,
          child: kTabButton(
            h: 42,
            w: 300,
            text: 'Password',
            recievedIndex: 1,
            colour: value == 1 ? blueAxent : whiteColors,
            textColor: value == 1 ? whiteColors : blueAxent,
          ),
        ),
        InkWell(
          onTap: () {
            setColor(2);
            setState(() {
              TwoFactorAuth = 0;
            });
          },
          canRequestFocus: false,
          enableFeedback: false,
          child: kTabButton(
            h: 42,
            w: 300,
            text: 'Two-factor authentication',
            recievedIndex: 2,
            colour: value == 2 ? blueAxent : whiteColors,
            textColor: value == 2 ? whiteColors : blueAxent,
          ),
        ),
        InkWell(
          onTap: () {
            setColor(3);
            setState(() {
              DeletePersonalData = false;
            });
          },
          canRequestFocus: false,
          enableFeedback: false,
          child: kTabButton(
            h: 42,
            w: 300,
            text: 'Personal data',
            recievedIndex: 3,
            colour: value == 3 ? blueAxent : whiteColors,
            textColor: value == 3 ? whiteColors : blueAxent,
          ),
        ),
      ],
    );
  }

  Container ProfileUpdatedSuccesfulContainer(
      BuildContext context, double width) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.9,
        height: MediaQuery.of(context).size.height * 0.07,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.01,
        ),
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.01,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color.fromARGB(255, 233, 242, 223)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: "Your profile has been updated",
                  width: width,
                  fs: width * 0.015,
                  colour: lightGreen,
                ),
                InkWell(
                    onTap: (() {
                      setState(() {
                        ProfileUpdated = false;
                      });
                    }),
                    child: Icon(Icons.cancel, color: lightGreen))
              ],
            ),
          ],
        ));
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/appLogoImage.PNG",
          scale: 5,
          color: blueAxent,
        ),
        // LogoTextAML(width: width),
        Spacer(),
        ButtonGoToGlobalCompliancePortal(),
        SizedBox(
          width: 10.w,
        ),
        GoToLoginScreenButton(
            text: "Logout from Identity", w: 190, h: 40, colour: redColor),
      ],
    );
  }
}

class DeletePersonalDataColumn extends StatelessWidget {
  const DeletePersonalDataColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Delete Personal Data",
            width: width,
            fs: width * 0.018,
            colour: blackColors,
            wordSpacng: 5.w,
            fw: FontWeight.w700,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.7,
            height: MediaQuery.of(context).size.height / 9.5,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color.fromARGB(255, 243, 217, 183)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: KText(
                text:
                    "Deleting this data will permanently remove your account, and this cannot be recovered.",
                width: width,
                fs: width * 0.010,
                colour: lightGrey,
                wordSpacng: 5.w,
                fw: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          KText(
            text: "Password",
            width: width,
            fs: width * 0.012,
            colour: blackColors,
          ),
          SizedBox(
            height: 15.h,
          ),
          KTextFieldwithShadow(
            w: MediaQuery.of(context).size.width / 1.7,
          ),
          SizedBox(
            height: 20.h,
          ),
          kButton(
              h: 45,
              w: 330,
              textSiz: width * 0.011,
              text: "Delete data and colse my account",
              textColor: whiteColors,
              colour: redColor),
        ],
      ),
    );
  }
}

class ButtonGoToGlobalCompliancePortal extends StatelessWidget {
  const ButtonGoToGlobalCompliancePortal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                ScreeningsScreen(),
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
              alwaysIncludeSemantics: true,
            ),
          ),
        );
        // Navigator.pushReplacement(
        //   context,
        //   PageRouteBuilder(
        //     pageBuilder: (context, animation1, animation2) =>
        //         ScreeningsScreen(),
        //     transitionDuration: Duration(milliseconds: 500),
        // reverseTransitionDuration: Duration.zero,
        //     transitionsBuilder: (_, a, __, c) =>
        //         FadeTransition(opacity: a, child: c),
        //   ),
        // );
      },
      h: 40,
      w: 230,
      textSiz: 15.sp,
      text: "Go to Global Compliance Portal",
      textColor: whiteColors,
      colour: blueAxent,
    );
  }
}
