import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class VarificationRow extends StatelessWidget {
  VarificationRow({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image, text;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(image
            // color: Colors.black,
            ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        KText(
          text: text,
          width: width,
          fw: FontWeight.w300,
          fs: width * 0.012,
          wordSpacng: 1.w,
          h: 1.3,
          colour: blackColors,
        ),
      ],
    );
  }
}
