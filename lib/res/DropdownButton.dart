import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/DashboardScreens.dart/AccountingScreen/AccountingScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';

class kDropdownButton extends StatefulWidget {
  kDropdownButton(
      {Key? key,
      required this.items,
      this.selectedValue,
      this.ScreenNameToGo,
      required this.buttonText,
      this.colour,
      this.w,
      this.h})
      : super(key: key);

  final List<dynamic> items;
  List<dynamic>? ScreenNameToGo;
  final dynamic selectedValue;
  String buttonText;
  double? w, h;
  Color? colour;

  @override
  State<kDropdownButton> createState() => _kDropdownButtonState();
}

class _kDropdownButtonState extends State<kDropdownButton> {
  // int index = 0;
  Widget SelectedScreen = ScreeningsScreen();
  List<dynamic>? ScreenNameToGoIndex = [];

  @override
  Widget build(BuildContext context) {
    ScreenNameToGoIndex = widget.ScreenNameToGo;
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        dropdownScrollPadding: EdgeInsets.zero,

        hint: Text(
          widget.buttonText,
          style: TextStyle(
            fontSize: 18.sp,
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          // overflow: TextOverflow.clip,
        ),
        // itemHeight: kMinInteractiveDimension,
        offset: Offset(0.0, 0.0),
        alignment: AlignmentDirectional.center,
        dropdownElevation: 0,
        isDense: false,
        barrierDismissible: false,
        buttonPadding: EdgeInsets.zero,
        dropdownPadding: EdgeInsets.zero,
        // itemPadding: EdgeInsets.zero,
        items: widget.items
            .map((item) => DropdownMenuItem<dynamic>(
                  value: item,
                  child: Text(
                    item.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        // value: items[0],
        onChanged: (value) {
          SelectedScreen = value;
          print(value.toString());
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectedScreen),
          );
          // }
        },
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          size: 25.sp,
          color: Colors.grey,
        ),
        iconSize: 24.sp,
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: widget.h ?? 50.h,
        buttonWidth: widget.w ?? 100.w,
        buttonDecoration: BoxDecoration(
          color: widget.colour ?? Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          // border: Border.all(
          //   color: Colors.black26,
          // ),
          // color: Colors.white,
        ),

        dropdownMaxHeight: 230.h,
        dropdownWidth: 250.w,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 0.3),
        ),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
      ),
    );
  }
}
