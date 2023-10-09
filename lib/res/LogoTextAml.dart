import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoTextAML extends StatelessWidget {
  const LogoTextAML({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Text(
      "AML",
      style: TextStyle(
          color: Colors.blueAccent,
          fontSize: width * 0.045,
          letterSpacing: 15.w,
          fontWeight: FontWeight.bold),
    );
  }
}
