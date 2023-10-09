import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';

class QuickNameSearchScreen extends StatefulWidget {
  const QuickNameSearchScreen({super.key});

  @override
  State<QuickNameSearchScreen> createState() => _QuickNameSearchScreenState();
}

class _QuickNameSearchScreenState extends State<QuickNameSearchScreen> {
  String? selectedValue;
  String? selectedValue1 = 'Test Company';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var index = 0;
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColors,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 37.w,
            right: 55.w,
            top: 23.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarRow(),
              SizedBox(
                height: 55.h,
              ),
              KText(
                text: "Quick Name Search",
                width: width,
                fs: width * 0.028,
                ltrSpacing: 1.w,
                colour: blackColors,
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: 1095.w,
                    padding: EdgeInsets.only(
                        // bottom: 24.h,
                        top: 40,
                        left: 27.w,
                        right: 27.w),
                    margin: EdgeInsets.only(left: 5.w),
                    decoration: BoxDecoration(
                        color: whiteColors,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                              color: Colors.black38.withOpacity(0.1))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "Given Names *",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "Surname *",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "Gender *",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "Date of Birth *",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "Nationality *",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                KText(
                                  text: "External Id",
                                  width: width,
                                  fs: width * 0.011,
                                  ltrSpacing: 1.w,
                                  fw: FontWeight.w100,
                                  colour: blackColors,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                KTextFieldwithShadow(
                                  hintText: '   Enter Value',
                                  w: MediaQuery.of(context).size.width / 3.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        KText(
                          text: "* Required fields",
                          width: width,
                          fs: width * 0.011,
                          ltrSpacing: 1.w,
                          fw: FontWeight.w100,
                          colour: blackColors,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        kButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogoutScreen()),
                            );
                          },
                          h: 42,
                          w: MediaQuery.of(context).size.width,
                          textSiz: 12,
                          text: "Search",
                          textColor: Colors.white,
                          colour: blueAxent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 38.w,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    padding: EdgeInsets.only(
                        // bottom: 24.h,
                        top: 33,
                        left: 27.w,
                        right: 27.w),
                    decoration: BoxDecoration(
                        color: whiteColors,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                              color: Colors.black38.withOpacity(0.1))
                        ]),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: "Quick Name Search",
                            width: width,
                            fs: width * 0.011,
                            ltrSpacing: 1.w,
                            fw: FontWeight.bold,
                            colour: blackColors,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          KText(
                            text:
                                "You can look up a person using the GlobalCompliance database. You will receive a notification if they appear in the database or if they have a criminal record.",
                            width: width,
                            fs: width * 0.011,
                            ltrSpacing: 1.w,
                            colour: blackColors,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          KText(
                            text: "2 Credits",
                            width: width,
                            fs: width * 0.011,
                            ltrSpacing: 1.w,
                            fw: FontWeight.bold,
                            colour: blackColors,
                          ),
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  DropdownButtonHideUnderline DropdownWithBorder(int w, int h,
      List<dynamic> list, Color backgroundColor, Color iconAndTextColor) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            Text(
              selectedValue1!,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: iconAndTextColor,
              ),
            ),
          ],
        ),
        items: list
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: iconAndTextColor,
                    ),
                    // overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue1,
        onChanged: (value) {
          setState(() {
            selectedValue1 = value as String;
          });
        },
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          color: iconAndTextColor,
          size: 25.sp,
        ),
        iconSize: 14.sp,
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: h.h,
        buttonWidth: w.w,
        buttonPadding: EdgeInsets.only(
          left: 14.w,
        ),
        buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.r),
            border: Border.all(
              width: 0.5.w,
              color: Color.fromARGB(255, 141, 138, 138),
            ),
            color: backgroundColor),
        buttonElevation: 0,
        itemHeight: 45.h,
        itemPadding: EdgeInsets.only(left: 14.w, right: 14.w),
        dropdownMaxHeight: 200.h,
        dropdownWidth: 200.w,
        dropdownPadding: EdgeInsets.zero,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.r),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: Radius.circular(10.r),
        scrollbarThickness: 6.w,
        scrollbarAlwaysShow: true,
        // offset:   Offset(-20, 0),
      ),
    );
  }
}
