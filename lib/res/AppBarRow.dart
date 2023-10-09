import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/AppBarProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/CompaniesScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/UserManagementScreen/UserManagementScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kDashBoardDropdown.dart';
import 'package:global_compliance/res/kManualScreenDropdown.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicsScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:provider/provider.dart';

int index = 0;
int AppBarItemIndex = 0;

class AppBarRow extends StatefulWidget {
  const AppBarRow({
    Key? key,
    // required this.index,
  }) : super(key: key);

  @override
  State<AppBarRow> createState() => _AppBarRowState();
}

class _AppBarRowState extends State<AppBarRow> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // final appBarProvider = Provider.of<AppBarProvider>(context, listen: false);
    return Consumer<AppBarProvider>(
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            // SvgPicture.asset(
            //   'assets/images/logo2.svg',
            // height: 40.h,
            // ),
            InkWell(
                hoverColor: whiteColors,
                highlightColor: whiteColors,
                splashColor: whiteColors,
                onTap: () {
                  value.setAppBarIndex(2);
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          ScreeningsScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                child: Image.asset(
                  "assets/images/appLogoImage.PNG",
                  scale: 5,
                  color: blueAxent,
                )
                // LogoTextAML(width: width),
                ),
            SizedBox(
              width: 54.w,
            ),
            kDashBoardDropdown(
              w: width * 0.1,
              indexRecieved: dashboardItemsNames[index],
              items: dashboardItemsNames,
              ScreenNameToGo: dashboardItemsScreen,
              buttonText: 'Dashboard',
              // colour: value.getAppBarItemIndex == 1 ? blueAxent : whiteColors,
            ),
            SizedBox(
              width: 30.w,
            ),
            InkWell(
              hoverColor: whiteColors,
              highlightColor: whiteColors,
              splashColor: whiteColors,
              onTap: () {
                value.setAppBarIndex(2);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        ScreeningsScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                height: 40.h,
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                ),
                decoration: BoxDecoration(
                  color:
                      value.getAppBarItemIndex == 2 ? blueAxent : whiteColors,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: blueAxent,
                  ),
                  // color: Colors.white,
                ),
                // color: value.getAppBarItemIndex == 2 ? blueAxent : whiteColors,
                child: Center(
                  child: KText(
                    text: 'Screenings',
                    width: width,
                    fs: width * 0.012,
                    colour:
                        value.getAppBarItemIndex == 2 ? whiteColors : blueAxent,
                    fw: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            InkWell(
              hoverColor: whiteColors,
              highlightColor: whiteColors,
              splashColor: whiteColors,
              onTap: () {
                value.setAppBarIndex(3);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        ForensicsScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                height: 40.h,
                padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                ),
                decoration: BoxDecoration(
                  color:
                      value.getAppBarItemIndex == 3 ? blueAxent : whiteColors,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: blueAxent,
                  ),
                  // color: Colors.white,
                ),
                child: Center(
                  child: KText(
                    text: 'Forensics',
                    width: width,
                    fs: width * 0.012,
                    colour:
                        value.getAppBarItemIndex == 3 ? whiteColors : blueAxent,
                    fw: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            kManualScreenDropdown(
              w: width / 7,
              indexRecieved: ManualScreeningItemsNames[index],
              items: ManualScreeningItemsNames,
              ScreenNameToGo: ManualScreeningItems,
              buttonText: 'Manual Screenings  ',
              // colour: lightGrey,
            ),
            SizedBox(
              width: 30.w,
            ),
            InkWell(
              hoverColor: whiteColors,
              highlightColor: whiteColors,
              splashColor: whiteColors,
              onTap: () {
                value.setAppBarIndex(5);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        CompaniesScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                height: 40.h,
                padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                ),
                decoration: BoxDecoration(
                  color:
                      value.getAppBarItemIndex == 5 ? blueAxent : whiteColors,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: blueAxent,
                  ),
                  // color: Colors.white,
                ),
                child: Center(
                  child: KText(
                    text: 'Company',
                    width: width,
                    fs: width * 0.012,
                    colour:
                        value.getAppBarItemIndex == 5 ? whiteColors : blueAxent,
                    fw: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            InkWell(
              hoverColor: whiteColors,
              highlightColor: whiteColors,
              splashColor: whiteColors,
              onTap: () {
                value.setAppBarIndex(6);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        UserManagementScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                height: 40.h,
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                ),
                decoration: BoxDecoration(
                  color:
                      value.getAppBarItemIndex == 6 ? blueAxent : whiteColors,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: blueAxent,
                  ),
                  // color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "User Management",
                    style: TextStyle(
                      fontSize: width * 0.011,
                      fontWeight: FontWeight.bold,
                      color: value.getAppBarItemIndex == 6
                          ? whiteColors
                          : blueAxent,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            kButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        LogoutScreen(),
                    transitionDuration: Duration(seconds: 1),
                    // reverseTransitionDuration: Duration.zero,
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              h: 40,
              w: 80,
              textSiz: width * 0.011,
              text: "Log out",
              textColor: whiteColors,
              colour: redColor,
            ),
          ],
        );
      },
    );
  }
}
