import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';

class HeadingRow extends StatelessWidget {
  const HeadingRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KText(
          text: "Companies",
          width: width,
          fs: width * 0.029,
          ltrSpacing: 1.w,
          fw: FontWeight.w500,
          colour: blackColors,
        ),
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.005,
        ),
        kButton(
          onPressed: () {
            alert(
              context,
              title: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Create New Company'),
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
                            color: Colors.blue.withOpacity(0.4),
                            strokeAlign: BorderSide.strokeAlignOutside,
                            width: 5.w),
                      ),
                      // InputBorder.none,
                      hintText: "Enter Company Name",
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        h: 42,
                        w: 90,
                        textSiz: 16.sp,
                        text: "Close",
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
                        w: 130,
                        textSiz: 16.sp,
                        text: "Save Company",
                        textColor: whiteColors,
                        colour: blueAxent,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          h: 50,
          w: 200,
          textSiz: width * 0.012,
          text: "Add New Company",
          textColor: whiteColors,
          colour: blueAxent,
        ),
      ],
    );
  }
}
