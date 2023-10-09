import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kbutton.dart';

class GoToLoginScreenButton extends StatelessWidget {
  GoToLoginScreenButton({Key? key, this.h, this.w, this.text, this.colour})
      : super(key: key);
  double? h, w;
  String? text;
  Color? colour;
  @override
  Widget build(BuildContext context) {
    return kButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => LoginScreen(),
            transitionDuration: Duration(milliseconds: 500),
            // reverseTransitionDuration: Duration.zero,
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ),
        );
      },
      h: h ?? 37.h,
      w: w ?? 85.w,
      text: text!.isEmpty ? "Login" : text.toString(),
      textColor: Colors.white,
      colour: colour ?? blueAxent,
    );
  }
}
