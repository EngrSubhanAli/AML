import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/LogoTextAml.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';

class InvitedForVarificationThroughGmail extends StatelessWidget {
  const InvitedForVarificationThroughGmail({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        top: 60.h,
        left: MediaQuery.of(context).size.width / 4.4,
        right: MediaQuery.of(context).size.width / 4.4,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      ScreeningsScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Image.asset(
              "assets/images/appLogoImage.PNG",
              scale: 5,
              color: blueAxent,
            ),
            //  LogoTextAML(width: width),
          ),
          SizedBox(
            height: 40.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: KText(
              text:
                  "You have been invited to verify your identity in the GlobalCompliance platform by Test Company",
              width: width,
              textAlign: TextAlign.center,
              fw: FontWeight.w400,
              fs: width * 0.015,
              colour: blackColors,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          kButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      WelcomeToUserPortalScreen(
                    valueindex: 0,
                    whichScreen: 0,
                  ),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            h: 40,
            w: 190,
            textSiz: width * 0.011,
            text: "Identity Varification",
            textColor: Colors.white,
            colour: blueAxent,
          ),
          SizedBox(
            height: 50.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: KText(
              text: "Why it is needed ?",
              width: width,
              textAlign: TextAlign.center,
              fw: FontWeight.w400,
              fs: width * 0.015,
              colour: darkGrey,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          KText(
            text:
                "Identity verification ensures that there is a real person behind a process and proves that the one is who he or she claims to be, preventing both a person from carrying out a process on behalf without authorization, and creating false identities or commit fraud.",
            width: width,
            textAlign: TextAlign.center,
            fw: FontWeight.w400,
            fs: width * 0.012,
            wordSpacng: 3.5,
            colour: blackColors,
            h: 2.h,
          ),
        ],
      ),
    ));
  }
}
