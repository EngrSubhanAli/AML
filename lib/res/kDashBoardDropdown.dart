// DashBoardDropdown
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/AppBarProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicsScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:provider/provider.dart';

class kDashBoardDropdown extends StatefulWidget {
  kDashBoardDropdown(
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
  dynamic indexRecieved;
  double? w, h;
  Color? colour;

  @override
  State<kDashBoardDropdown> createState() => _kDropdownButtonState();
}

class _kDropdownButtonState extends State<kDashBoardDropdown> {
  int index = 0;
  dynamic SelectedScreen = ForensicsScreen();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final appBarProvider = Provider.of<AppBarProvider>(context, listen: false);
    // dynamic SelectedScreen = widget.ScreenNameToGo![index];
    // appBarProvider.setAppBarIndex(1);
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: false,
        dropdownScrollPadding: EdgeInsets.zero,

        hint: Text(
          widget.buttonText,
          style: TextStyle(
            fontSize: width * 0.012,
            fontWeight: FontWeight.w800,
            color: appBarProvider.getAppBarItemIndex == 1
                ? whiteColors
                : blueAxent,
          ),
          // overflow: TextOverflow.clip,
        ),
        // itemHeight: kMinInteractiveDimension,

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
          for (int i = 0; i < dashboardItemsNames.length; i++) {
            if (dashboardItemsNames[i] == value) {
              print(ManualScreeningItems[i]);

              appBarProvider.setAppBarIndex(1);
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
        },
        offset: Offset(0.0, 0.0),
        alignment: AlignmentDirectional.center,
        dropdownElevation: 0,
        isDense: false, buttonElevation: 0,
        barrierDismissible: true,
        buttonPadding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        dropdownPadding: EdgeInsets.zero,
        // itemPadding: EdgeInsets.zero,

        icon: Icon(
          Icons.arrow_drop_down_rounded,
          size: 25.sp,
          color:
              appBarProvider.getAppBarItemIndex == 1 ? whiteColors : blueAxent,
        ),
        iconSize: 24.sp,
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: widget.h ?? 40.h,
        buttonWidth: widget.w ?? 100.w,
        buttonDecoration: BoxDecoration(
          color:
              appBarProvider.getAppBarItemIndex == 1 ? blueAxent : whiteColors,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1.5.w,
            color: blueAxent,
          ),
          // color: Colors.white,
        ),
        itemHeight: 45.h,
        dropdownMaxHeight: double.infinity,
        dropdownWidth: widget.w,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          color: Colors.white,
          border: Border.all(color: blueAxent, width: 1),
        ),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
      ),
    );
  }
}
