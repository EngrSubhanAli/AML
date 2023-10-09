import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/PersonalDetailField.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class confirmPersonalAddressColumn extends StatelessWidget {
  const confirmPersonalAddressColumn({
    Key? key,
    required this.adressController,
    required this.cityController,
    required this.postalCodeController,
    required this.CountryOfResidenceController,
  }) : super(key: key);

  final TextEditingController adressController;
  final TextEditingController cityController;
  final TextEditingController postalCodeController;
  final TextEditingController CountryOfResidenceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Confirm your personal address',
          style: TextStyle(
              color: blackColors,
              fontSize: 35.sp,
              // letterSpacing: 5.w,
              wordSpacing: 1.w,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Address',
                style: TextStyle(
                  color: blackColors,
                  fontSize: 20.sp,
                )),
            SizedBox(
              width: 10.w,
            ),
            Container(
              color: lightGrey,
              height: 1.h,
              width: 710.w,
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        PersonalDetailField(
          firstController: adressController,
          firstheading: 'ADDRESS',
          firstHint: 'Address',
          SecondHeading: 'CITY *',
          secondHint: 'City',
          secondController: cityController,
        ),
        SizedBox(
          height: 35.h,
        ),
        PersonalDetailField(
          firstController: postalCodeController,
          firstheading: 'POST CODE *',
          firstHint: 'Postal code',
          SecondHeading: 'COUNTRY OF RESIDENCE *',
          secondHint: "Your Country",
          secondController: CountryOfResidenceController,
        ),
        SizedBox(
          height: 35.h,
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
                  width: MediaQuery.of(context).size.width * 0.2,
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
                        "Upload your proof of address",
                        style: TextStyle(fontSize: 20.sp, color: blueAxent),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              "Supported formats: mp4, avi, mov, webm",
              style: TextStyle(
                  fontSize: 20.sp, color: blackColors.withOpacity(.5)),
            )
          ],
        ),
      ],
    );
  }
}
