import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:global_compliance/Providers/CalenderProvider.dart';
import 'package:global_compliance/Providers/RadioSwitchButtonProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:provider/provider.dart';

int defaultScreeningCostValue = 0;

class RadioButtonWidget extends StatefulWidget {
  bool SwitchValue;
  int switchNo;
  RadioButtonWidget({required this.SwitchValue, required this.switchNo});
  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RadioSwitchButtonProvider>(
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlutterSwitch(
              activeToggleColor: whiteColors,
              inactiveToggleColor: lightGrey,
              toggleSize: 23.sp,
              inactiveColor: whiteColors,
              switchBorder:
                  Border.all(width: 5.w, color: blueAxent.withOpacity(0.4)),
              padding: 0,
              value: widget.SwitchValue,
              height: 24.h,
              width: 42.w,
              onToggle: (val) {
                setState(() {
                  widget.SwitchValue = val;
                  print(val);

                  print(widget.switchNo);
                });
                value.setValue(widget.switchNo, widget.SwitchValue);
              },
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              widget.SwitchValue ? "On" : "Off",
              style: TextStyle(fontSize: 25.sp),
            ),
          ],
        );
      },
    );
  }
}
