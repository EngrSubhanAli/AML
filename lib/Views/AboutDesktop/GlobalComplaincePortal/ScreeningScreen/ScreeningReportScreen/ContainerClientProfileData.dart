import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ClientProfileDataRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ScreeningReportScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';

class ContainerClientProfileData extends StatelessWidget {
  const ContainerClientProfileData({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height / 1.3,
        width: width / 2.3,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: lightGrey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.circular(10.r), color: whiteColors),
        padding: EdgeInsets.all(30.r),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              KText(
                  width: width * 0.050,
                  text: "Client Profile",
                  fw: FontWeight.bold,
                  colour: blackColors),
              SizedBox(
                height: 25.h,
              ),
              KText(
                  width: width * 0.050,
                  text: "Alexandre Alexandrovich Beltchikov",
                  fw: FontWeight.bold,
                  colour: blackColors),
              SizedBox(
                height: 15.h,
              ),
              KText(
                  width: width * 0.040,
                  text: "Male, 1990-12-26",
                  colour: blackColors),
              SizedBox(
                height: 20.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Container(
                    width: width * 0.1,
                    child: KText(
                        width: width * 0.030,
                        text: "Info Type",
                        fw: FontWeight.bold,
                        colour: blackColors),
                  ),
                  Container(
                    width: width / 7,
                    child: KText(
                        width: width * 0.030,
                        fw: FontWeight.bold,
                        text: "Details",
                        colour: blackColors),
                  ),
                  KText(
                      width: width * 0.030,
                      text: "Status",
                      fw: FontWeight.bold,
                      colour: blackColors),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              ClientProfileDataRow(
                  width: width,
                  infoType: "Gender",
                  detail: 'Male',
                  status: 'Submitted',
                  noOfComents: "0"),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              ClientProfileDataRow(
                  width: width,
                  infoType: "Given Names",
                  detail: 'Alexandre Alexandrovich',
                  status: 'Submitted',
                  noOfComents: "0"),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              ClientProfileDataRow(
                  width: width,
                  infoType: "Surname",
                  detail: 'Beltchikov',
                  status: 'Submitted',
                  noOfComents: "0"),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              ClientProfileDataRow(
                  width: width,
                  infoType: "Date of Birth	",
                  detail: '1990-12-26	',
                  status: 'Submitted',
                  noOfComents: "0"),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 15.h,
              ),
              ClientProfileDataRow(
                  width: width,
                  infoType: "Nationality",
                  detail: 'FRA',
                  status: 'Submitted',
                  noOfComents: "0"),
            ]));
  }
}
