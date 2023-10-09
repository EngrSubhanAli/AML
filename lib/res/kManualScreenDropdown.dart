import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/AppBarProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicsScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:provider/provider.dart';

class kManualScreenDropdown extends StatefulWidget {
  kManualScreenDropdown(
      {Key? key,
      required this.items,
      this.selectedValue,
      this.ScreenNameToGo,
      this.indexRecieved,
      required this.buttonText,
      this.colour,
      this.w,
      this.h})
      : super(key: key);

  final List<dynamic> items;
  List<dynamic>? ScreenNameToGo;
  final dynamic selectedValue;
  String buttonText;
  dynamic? indexRecieved;
  double? w, h;
  Color? colour;

  @override
  State<kManualScreenDropdown> createState() => _kDropdownButtonState();
}

class _kDropdownButtonState extends State<kManualScreenDropdown> {
  int indexdropDown = 0;
  dynamic SelectedScreen = ForensicsScreen();
  @override
  Widget build(BuildContext context) {
    final appBarProvider = Provider.of<AppBarProvider>(context, listen: false);

    double width = MediaQuery.of(context).size.width;
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        dropdownScrollPadding: EdgeInsets.zero,

        hint: Text(
          widget.buttonText,
          style: TextStyle(
            fontSize: width * 0.012,
            fontWeight: FontWeight.w800,
            color: appBarProvider.getAppBarItemIndex == 4
                ? whiteColors
                : blueAxent,
          ),
          // overflow: TextOverflow.clip,
        ),
        // itemHeight: kMinInteractiveDimension,
        offset: Offset(0.0, 0.0),
        alignment: AlignmentDirectional.center,
        dropdownElevation: 0,
        isDense: false,
        barrierDismissible: true,
        buttonPadding:
            EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
        dropdownPadding: EdgeInsets.zero,
        items: widget.items
            .map((item) => DropdownMenuItem<dynamic>(
                  enabled: true,
                  value: item,
                  child: Text(
                    item.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: blueAxent,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),

        // value: items[0],
        onChanged: (value) {
          print(value.toString());
          // print("ManualScreeningItems[indexdropDown] " +
          //     ManualScreeningItems[indexdropDown].toString());
          appBarProvider.setAppBarIndex(4);

          for (int i = 0; i < ManualScreeningItemsNames.length; i++) {
            if (ManualScreeningItemsNames[i] == value) {
              print(ManualScreeningItems[i]);
              setState(() {
                SelectedScreen = widget.ScreenNameToGo![i];
              });
            }
          }

          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => SelectedScreen,
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );

          // }
        },
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          size: 25.sp,
          color:
              appBarProvider.getAppBarItemIndex == 4 ? whiteColors : blueAxent,
        ),
        iconSize: 24.sp,
        iconEnabledColor: whiteColors,
        iconDisabledColor: blueAxent,
        buttonHeight: widget.h ?? 40.h,
        buttonWidth: widget.w ?? 100.w,
        buttonDecoration: BoxDecoration(
          color:
              appBarProvider.getAppBarItemIndex == 4 ? blueAxent : whiteColors,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: blueAxent,
          ),
          // color: Colors.white,
        ),

        dropdownMaxHeight: 230.h,
        dropdownWidth: widget.w,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
        ),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
      ),
    );
  }
}
