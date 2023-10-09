import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:hovering/hovering.dart';
import '../../../../res/KText.dart';

class UserManagementScreen extends StatefulWidget {
  UserManagementScreen({super.key});

  @override
  State<UserManagementScreen> createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends State<UserManagementScreen> {
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
                  // AppBar Row
                  AppBarRow(),
                  // ************************************************************************************************
                  SizedBox(
                    height: 55.h,
                  ),
                  UserManagementHeadingRow(width: width, height: height),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KText(
                        text: "User Id",
                        width: width,
                        fs: width * 0.012,
                        ltrSpacing: 1.w,
                        fw: FontWeight.bold,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: width / 5.1,
                      ),
                      KText(
                        text: "Email",
                        width: width,
                        fs: width * 0.012,
                        ltrSpacing: 1.w,
                        fw: FontWeight.bold,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: width / 5.1,
                      ),
                      KText(
                        text: "Role",
                        width: width,
                        fs: width * 0.012,
                        ltrSpacing: 1.w,
                        fw: FontWeight.bold,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: width / 5.1,
                      ),
                      KText(
                        text: "Companies",
                        width: width,
                        fs: width * 0.012,
                        ltrSpacing: 1.w,
                        fw: FontWeight.bold,
                        colour: blackColors,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: height * 1,
                    width: width,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 13,
                      itemExtent: 70.h,
                      itemBuilder: (context, i) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 5.w),
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
                          child: Row(
                            children: [
                              InkWell(
                                hoverColor: whiteColors,
                                highlightColor: whiteColors,
                                splashColor: whiteColors,
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   PageRouteBuilder(
                                  //     pageBuilder: (context, animation1, animation2) =>
                                  //         ScreeningReportScreen(),
                                  //     transitionDuration: Duration.zero,
                                  //     reverseTransitionDuration: Duration.zero,
                                  //   ),
                                  // );
                                },
                                child: HoverWidget(
                                  hoverChild: Row(
                                    children: [
                                      Icon(
                                        Icons.file_copy,
                                        color: hoverTextColor,
                                        size: width * 0.012,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005,
                                      ),
                                      Container(
                                        width: width / 4.5,
                                        child: Text(
                                          "ed29bc73-2793-4a9b-88a4-d1be31d82-1231dasd",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: hoverTextColor,
                                            fontSize: width * 0.012,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onHover: (event) {
                                    // _key.currentState
                                    setState(() {
                                      hoverTextColor =
                                          Color.fromARGB(255, 81, 136, 180);
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.file_copy,
                                          size: 20.sp, color: blueAxent),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005,
                                      ),
                                      Container(
                                        width: width / 4.5,
                                        child: Text(
                                          "ed29bc73-2793-4a9b-88a4-d1be31d82-1231dasd",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: blueAxent),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Container(
                              //   width: width / 4.2,
                              //   child: Text(
                              //     "ed29bc73-2793-4a9b-88a4-d1be31d82-1231dasd",
                              //     overflow: TextOverflow.ellipsis,
                              //     style: TextStyle(
                              //       color: blackColors,
                              //       overflow: TextOverflow.ellipsis,
                              //       fontSize: 20.sp,
                              //     ),
                              //   ),
                              // ),

                              HoverWidget(
                                hoverChild: InkWell(
                                  hoverColor: whiteColors,
                                  highlightColor: whiteColors,
                                  splashColor: whiteColors,
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   PageRouteBuilder(
                                    //     pageBuilder: (context, animation1,
                                    //             animation2) =>
                                    //         ScreeningReportScreen(),
                                    //     transitionDuration: Duration.zero,
                                    //     reverseTransitionDuration:
                                    //         Duration.zero,
                                    //   ),
                                    // );
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.file_copy,
                                        color: hoverTextColor,
                                        size: width * 0.012,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005,
                                      ),
                                      Container(
                                        width: width / 4.7,
                                        child: Text(
                                          "Farrukhhayat92@gmail.com",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: hoverTextColor,
                                            fontSize: width * 0.012,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onHover: (event) {
                                  // _key.currentState
                                  setState(() {
                                    hoverTextColor =
                                        Color.fromARGB(255, 81, 136, 180);
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.file_copy,
                                        size: 20.sp, color: blueAxent),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Container(
                                      width: width / 4.7,
                                      child: Text(
                                        "Farrukhhayat92@gmail.com",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 20.sp, color: blueAxent),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: width / 4.4,
                                child: Text(
                                  "Company",
                                  style: TextStyle(
                                    color: blackColors,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                              Container(
                                width: width / 4.7,
                                child: Text(
                                  "Swiss AMF AG",
                                  style: TextStyle(
                                    color: blackColors,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class UserManagementHeadingRow extends StatefulWidget {
  const UserManagementHeadingRow(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  final double width, height;

  @override
  State<UserManagementHeadingRow> createState() =>
      _UserManagementHeadingRowState();
}

class _UserManagementHeadingRowState extends State<UserManagementHeadingRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KText(
          text: "User Management",
          width: widget.width,
          fs: widget.width * 0.029,
          ltrSpacing: 1.w,
          fw: FontWeight.w500,
          colour: blackColors,
        ),
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.005,
        ),
        kButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                bool showDropDown = false;
                return StatefulBuilder(
                  builder: (context, setState) {
                    return AlertDialog(
                      title: Container(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Invite New User'),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.cancel,
                                  size: 28.sp,
                                  color: blackColors,
                                ),
                              )
                            ],
                          )),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          kButton(
                            onPressed: () {
                              setState(() {
                                showDropDown = true;
                              });
                            },
                            h: 40,
                            w: 100,
                            textSiz: widget.width * 0.011,
                            text: "Company",
                            textColor: whiteColors,
                            colour: showDropDown == true ? blueAxent : grey,
                          ),
                          SizedBox(
                            height: widget.height * 0.03,
                          ),
                          KText(
                            text: 'Enter Email',
                            width: widget.width,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                            fw: FontWeight.bold,
                          ),
                          SizedBox(
                            height: widget.height * 0.02,
                          ),
                          // Container(
                          //   width: widget.width * 0.6,
                          //   height: 45.h,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(5.r),
                          //       color: Colors.transparent,
                          //       border: Border.all(
                          //         color: Color.fromARGB(255, 68, 67, 67),
                          //         width: 0.2.w,
                          //         strokeAlign: BorderSide.strokeAlignOutside,
                          //       )),
                          //   child: Center(
                          //     child: TextField(
                          //       decoration: InputDecoration(
                          //         focusedBorder: OutlineInputBorder(
                          //           // borderSide: BorderSide.none,
                          //           borderSide: BorderSide(
                          //               color: Colors.blue.withOpacity(0.4),
                          //               strokeAlign:
                          //                   BorderSide.strokeAlignOutside,
                          //               width: 5.w),
                          //         ),
                          //         hintText: "Enter Company Name",
                          //         hintStyle: TextStyle(fontSize: 17.sp),
                          //         contentPadding:
                          //             EdgeInsets.only(bottom: 12.h, left: 5.w),
                          //         enabledBorder: OutlineInputBorder(
                          //           borderSide: BorderSide.none,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          KTextFieldwithShadow(
                            hintText: "Enter Company Name",
                            w: widget.width * 0.6,
                          ),
                          SizedBox(
                            height: widget.height * 0.2,
                          ),
                          KText(
                            text: 'Select Companies',
                            width: widget.width,
                            fs: widget.width * 0.012,
                            colour: blackColors,
                            fw: FontWeight.bold,
                          ),
                          SizedBox(
                            height: widget.height * 0.02,
                          ),
                          showDropDown == false
                              ? Container(
                                  width: widget.width * 0.6,
                                  height: 50.h,
                                  padding: EdgeInsets.only(left: 15.w),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: lightGrey.withOpacity(0.1),
                                      border: Border.all(
                                        color: grey,
                                        width: 1.w,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      )),
                                  child: Text(
                                    "Select",
                                    style: TextStyle(
                                        fontSize: widget.width * 0.0090,
                                        fontWeight: FontWeight.w200,
                                        color: blackColors),
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              : DropDownWithBorder(
                                  backgroundColor: whiteColors,
                                  w: widget.width * 0.6,
                                  // h: 60.h,
                                  list: companiesList,
                                  selectedValue: "Select",
                                  iconAndTextColor: blackColors,
                                  itemtextColor: blackColors),
                          SizedBox(
                            height: widget.height * 0.02,
                          ),
                          Divider(),
                        ],
                      ),
                      actions: <Widget>[
                        kButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          h: 42,
                          w: 90,
                          textSiz: 16.sp,
                          text: "Close",
                          textColor: whiteColors,
                          colour: lightGrey,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        kButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          h: 42,
                          w: 130,
                          textSiz: 16.sp,
                          text: "Save Company",
                          textColor: whiteColors,
                          colour: blueAxent,
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          h: 50,
          w: 200,
          textSiz: widget.width * 0.012,
          text: "Invite New User",
          textColor: whiteColors,
          colour: blueAxent,
        ),
      ],
    );
  }
}
