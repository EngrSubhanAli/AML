import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicAnalysisDataContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicDataHeadingRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/NextPreviousBtnRow.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/SearchRowForensicScreen.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kCountryDropDown1.dart';
import 'package:global_compliance/res/DropdownButton.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/view_Models/Models.dart';
import 'package:global_compliance/Views/AboutDesktop/LoginScreen/LoginScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/DashboardScreens.dart/AccountingScreen/AccountingScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:hovering/hovering.dart';
import 'package:table_calendar/table_calendar.dart';

class ForensicsScreen extends StatefulWidget {
  const ForensicsScreen({super.key});

  @override
  State<ForensicsScreen> createState() => _ForensicsScreenState();
}

class _ForensicsScreenState extends State<ForensicsScreen> {
  String? selectedValue;
  String? selectedValue1 = 'Test Company';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var index = 0;
    return Scaffold(
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
                text: "Forensic Analysis",
                width: width,
                fw: FontWeight.w500,
                fs: width * 0.030,
                colour: blackColors,
              ),
              SizedBox(
                height: 55.h,
              ),
              SearchRowForensicScreen(),
              SizedBox(
                height: 50.h,
              ),
              ForensicDataHeadingRow(width: width),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 600.h,
                child: ListView.builder(
                  itemCount: ForensicAnalysisDataList.length,
                  scrollDirection: Axis.vertical,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ForensicAnalysisDataContainer(
                      id: ForensicAnalysisDataList[index].id!,
                      screeningToken:
                          ForensicAnalysisDataList[index].screeningToken!,
                      tag: ForensicAnalysisDataList[index].tag!,
                      status: ForensicAnalysisDataList[index].status!,
                      created: ForensicAnalysisDataList[index].created!,
                      company: ForensicAnalysisDataList[index].company!,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              NextPreviousBtnRow(),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
