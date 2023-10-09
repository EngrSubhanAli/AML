import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/VarificationRow.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'dart:ui' as ui;

class confirmPersonalDetailsColumn2 extends StatelessWidget {
  const confirmPersonalDetailsColumn2({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KText(
          text: 'Confirm your personal details',
          width: width,
          fw: FontWeight.w700,
          fs: width * 0.020,
          wordSpacng: 1.w,
          colour: blackColors,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        KText(
          text:
              "NOTE! On the next page you will be required to upload a 'Proof of Address' document. Please make sure your document meets these requirements:",
          width: width,
          fw: FontWeight.w300,
          fs: width * 0.012,
          wordSpacng: 1.w,
          h: 2,
          colour: blackColors,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.5,
          padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.height * 0.06,
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          decoration: BoxDecoration(
              color: ui.Color.fromARGB(255, 199, 195, 195).withOpacity(0.3),
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(width: 0.5.w, color: blackColors)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VarificationRow(
                image: 'assets/images/doc-green.svg',
                text:
                    "Main requirements: provide a good quality picture of the proof of address\ndocument with all the corners and sides visible, or an original PDF file with all\npages included.",
              ),
              VarificationRow(
                image: 'assets/images/house.svg',
                text:
                    "Acceptable types: Electricity bills, internet bills, gas bills, water bills, landline\nphone bills; personal bank account statements; and governmental documents",
              ),
              VarificationRow(
                image: 'assets/images/clock.svg',
                text:
                    "'Proof of Address' documents that were issued longer than 3 months ago from\ntoday’s date will not be accepted.",
              ),
              VarificationRow(
                image: 'assets/images/clock.svg',
                text:
                    "'Proof of Address' documents that do not include your full name, full address\ndetails and/or date of document issue will not be accepted.",
              ),
            ],
          ),
        )
      ],
    );
  }
}
