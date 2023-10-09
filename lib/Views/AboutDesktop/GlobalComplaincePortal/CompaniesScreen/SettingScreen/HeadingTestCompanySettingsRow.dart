import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:hovering/hovering.dart';

class HeadingTestCompanySettingsRow extends StatelessWidget {
  HeadingTestCompanySettingsRow(
      {Key? key, required this.width, required this.CompanyName})
      : super(key: key);

  final double width;
  String CompanyName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KText(
          text: CompanyName,
          width: width,
          fs: width * 0.029,
          ltrSpacing: 1.w,
          fw: FontWeight.w500,
          colour: blackColors,
        ),
        Spacer(),
        InkWell(
          onTap: (() {
            alert(
              context,
              title: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Assign to company'),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.cancel,
                          color: blackColors,
                        ),
                      )
                    ],
                  )),
              content: Container(
                width: MediaQuery.of(context).size.width * 0.08,
                height: 45.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color.fromARGB(255, 68, 67, 67),
                      width: 0.2.w,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    )),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        // borderSide: BorderSide.none,
                        borderSide: BorderSide(
                            color: blueAxent,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            width: 5.w),
                      ),
                      // InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 17.sp),
                      // focusColor: Colors.blue,
                      // fillColor: Colors.pink,
                      contentPadding: EdgeInsets.only(bottom: 12.h, left: 5.w),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              textOK: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Swiss AMF AG',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Test Company',
                        style: TextStyle(color: blackColors),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      kButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        h: 42,
                        w: 90,
                        textSiz: 16.sp,
                        text: "Cancel",
                        textColor: whiteColors,
                        colour: lightGrey,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      kButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        h: 42,
                        w: 90,
                        textSiz: 16.sp,
                        text: "Assign",
                        textColor: whiteColors,
                        colour: blueAxent,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
          child: HoverWidget(
            hoverChild: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: blueAxent,
                border: Border.all(width: 0.5.w, color: blueAxent),
              ),
              child: Center(
                child: Text(
                  'Assign to Company',
                  style: TextStyle(color: whiteColors, fontSize: 17.sp),
                ),
              ),
            ),
            onHover: (event) {},
            child: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                  color: whiteColors,
                  border: Border.all(width: 0.5.w, color: blueAxent)),
              child: Center(
                child: Text(
                  'Assign to Company',
                  style: TextStyle(color: blueAxent, fontSize: 17.sp),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.005,
        ),
        kButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LogoutScreen()),
            );
          },
          h: 50,
          w: 80,
          textSiz: 14.sp,
          text: "Save",
          textColor: whiteColors,
          colour: blueAxent,
        ),
      ],
    );
  }
}
