import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/kTextField.dart';

class ExtractedvaluesColumn extends StatelessWidget {
  const ExtractedvaluesColumn({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
          SizedBox(
            height: height / 27,
          ),
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
          SizedBox(
            height: height / 27,
          ),
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
          SizedBox(
            height: height / 27,
          ),
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
          SizedBox(
            height: height / 27,
          ),
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
          SizedBox(
            height: height / 27,
          ),
          KTextFieldwithShadow(
            hintText: 'Enter Value',
            w: width * 0.2,
          ),
        ],
      ),
    );
  }
}
