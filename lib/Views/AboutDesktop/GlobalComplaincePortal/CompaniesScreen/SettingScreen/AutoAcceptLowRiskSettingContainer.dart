import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class AutoAcceptLowRiskSettingContainer extends StatefulWidget {
  const AutoAcceptLowRiskSettingContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<AutoAcceptLowRiskSettingContainer> createState() =>
      _AutoAcceptLowRiskSettingContainerState();
}

class _AutoAcceptLowRiskSettingContainerState
    extends State<AutoAcceptLowRiskSettingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.8,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
      margin: EdgeInsets.only(
        top: 20.h,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            )
          ],
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Auto Accept: Low Risk Settings",
            width: widget.width,
            fs: widget.width * 0.015,
            fw: FontWeight.w600,
            colour: blackColors,
          ),
          SizedBox(
            height: 15.h,
          ),
          KText(
            text:
                "All screenings that do not match any criteria defined above will be set as \"Low\" risk level.",
            width: widget.width,
            fs: widget.width * 0.013,
            fw: FontWeight.w300,
            colour: blackColors,
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
