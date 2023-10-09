import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/CountryDropDownProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/VarifyPassportScreen/VarifyPassportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/VerifyIdCardScreen/VerifyIdCardScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/DocumentContainerWidget.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kCountryDropDown1.dart';
import 'package:provider/provider.dart';

class IdentityCheckContainer extends StatefulWidget {
  const IdentityCheckContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<IdentityCheckContainer> createState() => _IdentityCheckContainerState();
}

class _IdentityCheckContainerState extends State<IdentityCheckContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            "Identity Check",
            style: TextStyle(
                color: Colors.black,
                fontSize: 35.sp,
                // letterSpacing: 5.w,
                wordSpacing: 1.w,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.030),
          Text(
            "Please select Identity Document",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                // letterSpacing: 5.w,
                wordSpacing: 1.w,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.030),
          Text(
            "DOCUMENT COUNTRY OF ISSUE",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Consumer<CountryDropDownProvider>(builder: (context, value, child) {
            return kCountryDropdown(
              backgroundColor: Colors.white,
              w: MediaQuery.of(context).size.width * 0.250,
              h: 60,
              list: country_list,
              selectedValue: value.CountrySelected,
              dropDownTag: "CountrySelected",
              iconAndTextColor: Colors.black,
            );
          }),
          SizedBox(height: MediaQuery.of(context).size.height * 0.030),
          Text(
            "DOCUMENT TYPE",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          InkWell(
            onTap: () {
              setState(() {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        VarifyPassportScreen(
                      ShowPassportFront: false,
                    ),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              });
            },
            child: DocumentContainerWidget(
              imageBackColor: blueAxent,
              iconVisible: true,
              image: 'assets/images/icon_passport.svg',
              D_name: 'Passport',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.020),
          Consumer<CountryDropDownProvider>(builder: (context, value, child) {
            return InkWell(
              onTap: () {
                value.CountrySelected == "Select"
                    ? SizedBox()
                    : Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              VerifyIdCardScreen(ShowNicFront: false),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             VerifyIdCardScreen(ShowNicFront: false)),
                //   );
              },
              child: DocumentContainerWidget(
                  iconVisible: value.CountrySelected == "Select" ? false : true,
                  imageBackColor: value.CountrySelected == "Select"
                      ? blueAxent.withOpacity(0.7)
                      : blueAxent,
                  image: 'assets/images/icon_id.svg',
                  D_name: 'ID Card'),
            );
          }),
          SizedBox(height: MediaQuery.of(context).size.height * 0.020),
          DocumentContainerWidget(
              iconVisible: false,
              imageBackColor: blueAxent.withOpacity(0.7),
              image: 'assets/images/icon_drivers.svg',
              D_name: 'Driving licence'),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
