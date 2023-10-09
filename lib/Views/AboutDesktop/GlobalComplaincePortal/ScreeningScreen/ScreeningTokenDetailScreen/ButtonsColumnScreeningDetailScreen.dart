import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ScreeningTokenDetailScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/kButtonWithTextIcon.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class ButtonsColumnScreeningDetailScreen extends StatelessWidget {
  const ButtonsColumnScreeningDetailScreen(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kButtonWithTextIcon(
            width: width,
            icon: Icons.screen_search_desktop,
            text: "Trigger Aml Scan",
            btnW: width / 4,
            btnH: height * 0.050,
            btnColor: blueAxent,
            fs: width * 0.011),
        SizedBox(
          height: 15.h,
        ),
        kButtonWithTextIcon(
          width: width,
          icon: Icons.dashboard_customize_outlined,
          text: "Trigger Document Scan",
          btnH: height * 0.050,
          fs: width * 0.011,
          btnColor: blueAxent,
          btnW: width / 4,
        ),
        SizedBox(
          height: 15.h,
        ),
        kButtonWithTextIcon(
          width: width,
          icon: Icons.verified_user_sharp,
          text: "Trigger Proof of Address Varification",
          fs: width * 0.011,
          btnW: width / 4,
          btnH: height * 0.050,
          btnColor: blueAxent,
        )
      ],
    );
  }
}
