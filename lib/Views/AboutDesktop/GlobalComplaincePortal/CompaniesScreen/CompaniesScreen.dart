import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/HeadingRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';

class CompaniesScreen extends StatefulWidget {
  CompaniesScreen({super.key});

  @override
  State<CompaniesScreen> createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  TextEditingController searchCompanyControllar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColors,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 37.w,
              right: 45.w,
              top: 23.h,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ************************************************************************************************
                  // TaskBar Row
                  AppBarRow(),
                  // ************************************************************************************************
                  SizedBox(
                    height: 55.h,
                  ),
                  HeadingRow(width: width),
                  SizedBox(
                    height: 40.h,
                  ),
                  KTextFieldwithShadow(
                
                    w: width / 3.9,
                    hintText: "Search",
                    icon: Icons.search,
                    iconTrue: true,
                    textEditingController: searchCompanyControllar,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: height / 1.2,
                    width: width,
                    color: whiteColors,
                    child: ListView.builder(
                        itemExtent: 55.h,
                        itemCount: companiesList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            hoverColor: whiteColors,
                            highlightColor: whiteColors,
                            splashColor: whiteColors,
                            onTap: () {
                              CircularProgressIndicator(
                                color: blueAxent,
                              );
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingScreen(
                                            companyName:
                                                companiesList[index].toString(),
                                          )));
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(bottom: 13.h),
                              padding: EdgeInsets.only(
                                  left: 18.w, top: 5.h, bottom: 5.h),
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
                              child: KText(
                                text: companiesList[index],
                                width: width,
                                fs: width * 0.012,
                                ltrSpacing: 1.w,
                                colour: blackColors,
                              ),
                            ),
                          );
                        }),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
