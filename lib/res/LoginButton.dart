import 'package:flutter/material.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kbutton.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      h: 37,
      w: 60,
      text: "Login",
      textColor: whiteColors,
      colour: blueAxent,
    );
  }
}
