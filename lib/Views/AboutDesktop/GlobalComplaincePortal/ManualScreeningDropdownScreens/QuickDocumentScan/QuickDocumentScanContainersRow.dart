import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';

class QuickDocumentScanContainersRow extends StatelessWidget {
  const QuickDocumentScanContainersRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: 1095.w,
          padding: EdgeInsets.only(top: 40, left: 27.w, right: 27.w),
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.31,
                    width: MediaQuery.of(context).size.width * 0.29,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 227, 227),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_upload,
                            color: Colors.black, size: 50.sp),
                        SizedBox(
                          height: 15.h,
                        ),
                        KText(
                          text: "Upload Front Side *",
                          width: width,
                          fs: width * 0.012,
                          ltrSpacing: 1.w,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.31,
                    width: MediaQuery.of(context).size.width * 0.29,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 227, 227),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_upload_sharp,
                          size: 50.sp,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        KText(
                          text: "Upload Back Side (ID Card Only)",
                          width: width,
                          fs: width * 0.012,
                          ltrSpacing: 1.w,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => LogoutScreen()),
                  // );
                },
                h: 42,
                w: MediaQuery.of(context).size.width,
                textSiz: 12,
                text: "Scan",
                textColor: whiteColors,
                colour: blueAxent,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 38.w,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.7,
          width: MediaQuery.of(context).size.width / 3.4,
          padding: EdgeInsets.only(top: 33, left: 27.w, right: 27.w),
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
                  text: "Quick Document Scan",
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
                      "Use GlobalCompliance to perform a quick check of any individual's ID. Individual´s full name will be automatically extracted from the provided identity document. You will receive a notification if they appear in the database or if they have a criminal record.",
                  width: width,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  fw: FontWeight.w500,
                  colour: blackColors,
                ),
                SizedBox(
                  height: 10.h,
                ),
                KText(
                  text: "5 Credits",
                  width: width,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  fw: FontWeight.bold,
                  colour: blackColors,
                ),
              ]),
        )
      ],
    );
  }
}
