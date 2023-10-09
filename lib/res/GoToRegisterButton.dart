import 'package:flutter/material.dart';
import 'package:global_compliance/Views/AboutDesktop/RegisterAsANewUser/RegisterAsANewUser.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kbutton.dart';

class GoToRegisterButton extends StatelessWidget {
  GoToRegisterButton({Key? key, this.btnColor}) : super(key: key);
  Color? btnColor;
  @override
  Widget build(BuildContext context) {
    return kButton(
        onPressed: () {
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
        h: 39,
        w: 85,
        text: "Register",
        textColor: whiteColors,
        colour: btnColor ?? Colors.green);
  }
}
