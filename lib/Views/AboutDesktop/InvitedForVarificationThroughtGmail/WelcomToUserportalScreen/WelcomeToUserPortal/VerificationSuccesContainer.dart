import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kbutton.dart';

class VerificationSuccesContainer extends StatefulWidget {
  const VerificationSuccesContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<VerificationSuccesContainer> createState() =>
      _VerificationSuccesContainerState();
}

class _VerificationSuccesContainerState
    extends State<VerificationSuccesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/success.png", scale: 2.5),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('Thank you!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                      'You have completed the user verification process.\nYour application is currently under review.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                      )),
                ],
              ),
              SizedBox(
                width: 30.w,
              ),
              Image.asset("assets/images/IllustrationDone.png", scale: 4),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          kButton(
              onPressed: () {
                // child: new Text("Scroll to data"),

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              h: 55,
              w: MediaQuery.of(context).size.width / 1.9,
              textSiz: 17,
              text: "Done",
              textColor: Colors.white,
              colour: blueAxent),
        ],
      ),
    );
  }
}
