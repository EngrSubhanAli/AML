import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Providers/CalenderProvider.dart';
import 'package:global_compliance/Providers/RadioSwitchButtonProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/DefaultScreeningSettingContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:provider/provider.dart';

class DefaultScreeningCostContainer extends StatefulWidget {
  DefaultScreeningCostContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<DefaultScreeningCostContainer> createState() =>
      _DefaultScreeningCostContainerState();
}

class _DefaultScreeningCostContainerState
    extends State<DefaultScreeningCostContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.4,
      width: 400.w,
      decoration: BoxDecoration(
        color: blueAxent,
        border: Border.all(
          width: 1.3.w,
          color: lightGrey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          KText(
            text: "Default Screening Cost",
            width: widget.width,
            fs: widget.width * 0.014,
            ltrSpacing: 1.w,
            fw: FontWeight.w500,
            colour: whiteColors,
          ),
          Consumer<RadioSwitchButtonProvider>(builder: (context, value, child) {
            return KText(
              text: value.defaultScreeningCostValue.toString(),
              width: widget.width,
              fs: widget.width * 0.030,
              ltrSpacing: 1.w,
              fw: FontWeight.bold,
              colour: whiteColors,
            );
          }),
          KText(
            text: "CREDITS",
            width: widget.width,
            fs: widget.width * 0.012,
            ltrSpacing: 1.w,
            fw: FontWeight.w500,
            colour: whiteColors,
          ),
        ],
      ),
    );
  }
}
