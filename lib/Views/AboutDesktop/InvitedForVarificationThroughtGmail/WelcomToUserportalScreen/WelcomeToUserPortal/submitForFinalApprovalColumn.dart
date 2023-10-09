import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class submitForFinalApprovalColumn extends StatelessWidget {
  const submitForFinalApprovalColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verify your provided information',
          style: TextStyle(
              color: Colors.black,
              fontSize: 35.sp,
              // letterSpacing: 5.w,
              wordSpacing: 1.w,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Passport',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        // letterSpacing: 5.w,
                        // wordSpacing: 1.w,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/passport.png",
                    scale: 1,
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.010,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address information',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        // letterSpacing: 5.w,
                        // wordSpacing: 1.w,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/passport.png",
                    scale: 1,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // setState(() {
                //   imageGetNotNull = true;
                // });

                // _pickFiles();
              },
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: whiteColors,
                    border: Border.all(
                      width: 0.5.w,
                      color: blackColors.withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: blackColors),
                      Text(
                        "Reupload",
                        style: TextStyle(fontSize: 20.sp, color: blueAxent),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              "Please make sure the documents are in focus and clearly visible",
              style: TextStyle(
                  fontSize: 20.sp, color: Colors.black.withOpacity(.5)),
            )
          ],
        ),
      ],
    );
  }
}
