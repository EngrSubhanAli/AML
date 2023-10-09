import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ManualScreeningDropdownScreens/EditIdentityVarificationScreen/EmailIdentityInvitationSentContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ManualScreeningDropdownScreens/EditIdentityVarificationScreen/EmailIdentityVerificationHeadings.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/LogoutScreen/LogoutScreen.dart';

class EmailIdentityVarification extends StatefulWidget {
  EmailIdentityVarification({super.key});

  @override
  State<EmailIdentityVarification> createState() =>
      _EmailIdentityVarificationState();
}

class _EmailIdentityVarificationState extends State<EmailIdentityVarification> {
  String? selectedValue;

  String? selectedValue1 = 'Test Company';
  var value = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var index = 0;
    return Scaffold(
      backgroundColor: whiteColors,
      body: Padding(
        padding: EdgeInsets.only(
          left: 37.w,
          right: 55.w,
          top: 23.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarRow(),
              SizedBox(
                height: 55.h,
              ),
              KText(
                text: "Email Identity Verification",
                width: width,
                fw: FontWeight.w500,
                fs: width * 0.028,
                ltrSpacing: 1.w,
                colour: blackColors,
              ),
              SizedBox(
                height: 40.h,
              ),
              EmailIdentityVerificationContainers(context, width),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Text(
                "Invitations Sent",
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    letterSpacing: 2,
                    wordSpacing: 2),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              EmailIdentityVerificationHeadings(width: width),
              Container(
                height: 1000.h,
                child: ListView.builder(
                  itemCount: InvitationSentList.length,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return EditIdentityVarification(
                      name: InvitationSentList[index].name!,
                      screeningToken: InvitationSentList[index].screeningToken!,
                      Email: InvitationSentList[index].Email!,
                      Completed: InvitationSentList[index].Completed!,
                      UpdateRequested:
                          InvitationSentList[index].UpdateRequested!,
                      LinkOpened: InvitationSentList[index].LinkOpened!,
                      created: InvitationSentList[index].created!,
                      company: InvitationSentList[index].company!,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row EmailIdentityVerificationContainers(BuildContext context, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.4,
          width: MediaQuery.of(context).size.width / 1.6,
          padding: EdgeInsets.only(
              // bottom: 24.h,
              top: 40.h,
              left: 27.w,
              right: 27.w,
              bottom: 15.h),
          margin: EdgeInsets.only(left: 5.w),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KText(
                          text: '  Name',
                          width: width,
                          fs: width * 0.011,
                          colour: blackColors,
                          fw: FontWeight.bold,
                          ltrSpacing: 1.w),
                      SizedBox(
                        height: 15.h,
                      ),
                      KTextFieldwithShadow(
                        hintText: '   Enter name',
                        w: MediaQuery.of(context).size.width / 3.5,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KText(
                          text: '  Email',
                          width: width,
                          fs: width * 0.011,
                          colour: blackColors,
                          fw: FontWeight.bold,
                          ltrSpacing: 1.w),
                      SizedBox(
                        height: 15.h,
                      ),
                      KTextFieldwithShadow(
                        hintText: '   Enter email',
                        w: MediaQuery.of(context).size.width / 3.5,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: value,
                    onChanged: (bool? newValue) {
                      // onChanged(newValue);

                      setState(() {
                        value = newValue!;
                      });
                    },
                  ),
                  // KText(
                  //     text: '  Email',
                  //     width: width,
                  //     fs: width * 0.011,
                  //     colour: blackColors,
                  //     fw: FontWeight.bold,
                  //     ltrSpacing: 1.w),
                  Text("I want to receive updates"),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              kButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogoutScreen()),
                  );
                },
                h: 42,
                w: 80,
                textSiz: 12,
                text: "Invite",
                textColor: Colors.white,
                colour: blueAxent,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 38.w,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width / 3.4,
          padding: EdgeInsets.only(
              // bottom: 24.h,
              top: 40,
              left: 27.w,
              right: 27.w),
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KText(
                    text: "Email Identity Verification",
                    width: width,
                    fs: width * 0.011,
                    colour: blackColors,
                    fw: FontWeight.bold,
                    ltrSpacing: 1.w),
                SizedBox(
                  height: 10.h,
                ),
                KText(
                    text:
                        "In order to invite a user to verify their identity in the GlobalCompliance platform via email, please fill in the required fields. Upon pressing Invite, the user will receive an email invitation to verify their identity.",
                    width: width,
                    fs: width * 0.011,
                    colour: blackColors,
                    wordSpacng: 1,
                    ltrSpacing: 2.w),
              ]),
        )
      ],
    );
  }
}
