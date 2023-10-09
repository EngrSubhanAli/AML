import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

String tagValue = "";

class DropDownWithBorder extends StatefulWidget {
  DropDownWithBorder(
      {this.w,
      this.h,
      this.list,
      this.selectedValue,
      required this.backgroundColor,
      required this.itemtextColor,
      required this.iconAndTextColor});
  double? w, h;
  List<dynamic>? list;
  String? selectedValue, defaultselectedValue;

  Color backgroundColor, iconAndTextColor, itemtextColor;
  @override
  State<DropDownWithBorder> createState() => _DropDownWithBorderState();
}

class _DropDownWithBorderState extends State<DropDownWithBorder> {
  String defaultselectedValue = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        dropdownScrollPadding: EdgeInsets.zero,

        hint: Text(
          widget.selectedValue!,
          style: TextStyle(
            fontSize: width * 0.010,
            fontWeight: FontWeight.w200,
            color: widget.iconAndTextColor,
          ),
          // overflow: TextOverflow.ellipsis,
        ),
        items: widget.list!
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  enabled: true,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        // value: widget.selectedValue!,
        onChanged: (value) {
          setState(() {
            widget.selectedValue = value!;
          });
        },
        offset: Offset(0.0, 0.0),
        alignment: AlignmentDirectional.centerStart,
        dropdownElevation: 0,
        isDense: false, buttonElevation: 0,
        barrierDismissible: true,
        buttonPadding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
        ),
        dropdownPadding: EdgeInsets.zero,
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          color: widget.iconAndTextColor,
          size: 35.sp,
        ),
        iconSize: 24.sp,
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: widget.h ?? 40.h,
        buttonWidth: widget.w ?? 100.w,
        buttonDecoration: BoxDecoration(
          color: whiteColors,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1.5.w,
            color: blueAxent,
          ),
          // color: Colors.white,
        ),
        itemHeight: 45.h,
        dropdownMaxHeight: double.infinity,
        dropdownWidth: 250.w,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          color: Colors.white,
          border: Border.all(color: blueAxent, width: 0.3),
        ),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
      ),
    );
  }
}
