import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/VarificationRow.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';

class TermsAndConditionsForUploadingVideoScreen extends StatelessWidget {
  const TermsAndConditionsForUploadingVideoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          "NOTE: On the next page you will be required to make a video of yourself. For a faster and\nmore comfortable user experience please keep these tips in mind:",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              wordSpacing: 1.w,
              height: 2.h,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.5,
          padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.height * 0.06,
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(width: 0.5.w, color: Colors.black)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VarificationRow(
                image: 'assets/images/bulbIcon.svg',
                text: "Make sure your face is well lit.",
              ),
              VarificationRow(
                image: 'assets/images/camera-icon.svg',
                text: "Make sure the camera is on the same level as your face.",
              ),
              VarificationRow(
                image: 'assets/images/sun-glasses-icon.svg',
                text:
                    "Make sure to remove your glasses if they are not present in the identity\n"
                    "document picture. If you must wear medical glasses, please make sure there\nare no reflections that would cover your eyes.",
              ),
              VarificationRow(
                image: 'assets/images/hat-icon.svg',
                text:
                    "Please do not wear any head accessories if they are not present in the identity\ndocument picture.",
              ),
            ],
          ),
        )
      ],
    );
  }
}
