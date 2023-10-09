import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/VarifyPassportScreen/VarifyPassportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/Views/Testing/ProcessTimeLine/CameraPage.dart';
import 'package:global_compliance/main.dart';

class AboutDesktop extends StatefulWidget {
  const AboutDesktop({super.key});

  @override
  State<AboutDesktop> createState() => _AboutDesktopState();
}

class _AboutDesktopState extends State<AboutDesktop> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 1), () {
  //     setState(() async {
  //       await availableCameras().then(
  //         (value) => Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => CameraPage(
  //               cameras: value,
  //             ),
  //           ),
  //         ),
  //       );
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("FIREBASE_TOKEN" + FIREBASE_TOKEN);
    return LoginScreen();
    //     VarifyPassportScreen(
    //   ShowPassportFront: false,
    // );
    //     WelcomeToUserPortalScreen(
    //   valueindex: 1,
    // );
    // InvitedForVarificationThroughGmail(
    // companyName: "asdsad",
    // valueindex: 0,
    //     );
  }
}
  // KTextFieldwithShadow(
  //                           hintText: '0',
  //                           borderRadius: 30.r,
  //                           h: 62.h,
  //                           w: 790.w,
  //                         ),
      // shankar.peerthy@swissamf.com
      //pass      Dfe9h1948JY#j    asdasdasd
// Dfe9h1948JY#j
      //https://portal.globalcompliance.ch/screenings
