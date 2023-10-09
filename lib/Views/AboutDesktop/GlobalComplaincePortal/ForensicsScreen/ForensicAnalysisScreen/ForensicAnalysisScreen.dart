import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicAnalysisScreen/StatusForensicButtonColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicScreeningReportScreen/ForensiceReportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ForensicsScreen/ForensicsScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/BasicCompletionColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ButtonsColumnScreeningDetailScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/DetailsColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ExtractedvaluesColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ScreeningTokenDetailScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/StatusButtonsContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/kButtonWithTextIcon.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/view_Models/Models.dart';
import 'package:hovering/hovering.dart';

class ForensicAnalysisScreen extends StatefulWidget {
  const ForensicAnalysisScreen({super.key});

  @override
  State<ForensicAnalysisScreen> createState() => _ForensicAnalysisScreenState();
}

class _ForensicAnalysisScreenState extends State<ForensicAnalysisScreen> {
  bool fileCompletionBool = true;
  TextEditingController addForensicStatusCommentControllar =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                AppBarRow(),
                SizedBox(
                  height: 55.h,
                ),
                Row(
                  children: [
                    InkWell(
                      hoverColor: whiteColors,
                      highlightColor: whiteColors,
                      splashColor: whiteColors,
                      onTap: () {
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
                      child: CircleAvatar(
                        backgroundColor: whiteColors,
                        child: Icon(
                          Icons.arrow_back,
                          color: blueAxent,
                        ),
                      ),
                    ),
                    // BackButton(
                    //   color: blueAxent,
                    //   onPressed: (() {
                    //     Navigator.pop(context);
                    //   }),
                    // ),
                    KText(
                      text: "Forensic Analysis",
                      width: width,
                      fw: FontWeight.w500,
                      fs: width * 0.030,
                      colour: blackColors,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: width,
                  height: height / 2.3,
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
                  padding: EdgeInsets.only(top: 35.h, left: 25.w, right: 25.w),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kButtonWithTextIcon(
                            onPressed: () {},
                            width: width,
                            icon: Icons.send,
                            text: "Send to Client",
                            fs: width * 0.012,
                            btnH: height * 0.050,
                            btnColor: blueAxent,
                            btnW: width / 5),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          width: width / 4,
                          // color: redColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              KText(
                                text: "Status",
                                width: width,
                                fs: width * 0.013,
                                fw: FontWeight.w500,
                                colour: blackColors,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              KText(
                                text: "Tag",
                                width: width,
                                fs: width * 0.013,
                                fw: FontWeight.w500,
                                colour: blackColors,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              KText(
                                text: "SBLC",
                                width: width,
                                fs: width * 0.013,
                                fw: FontWeight.w500,
                                colour: blackColors,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              KText(
                                text: "Company",
                                width: width,
                                fs: width * 0.013,
                                fw: FontWeight.w500,
                                colour: blackColors,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              KText(
                                text: "Swiss AMF AG",
                                width: width,
                                fs: width * 0.013,
                                fw: FontWeight.w500,
                                colour: blackColors,
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                            ],
                          ),
                        ),
                        Container(
                            // width: width / 4,
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              text: "Screening",
                              width: width,
                              fs: width * 0.013,
                              fw: FontWeight.w500,
                              colour: blackColors,
                            ),
                            SizedBox(
                              height: height * 0.013,
                            ),
                            InkWell(
                              hoverColor: whiteColors,
                              highlightColor: whiteColors,
                              splashColor: whiteColors,
                              onTap: () {
                                // Get.to(ForensicsReportScreen())/
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            ForensicsReportScreen(),
                                    transitionDuration: Duration.zero,
                                    reverseTransitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: HoverWidget(
                                hoverChild: Row(
                                  children: [
                                    Icon(
                                      Icons.edit_note_outlined,
                                      color: hoverTextColor,
                                      size: 30.sp,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          6.3,
                                      child: Text(
                                        "d99abf9c-4771-4996-a28b-cd2cb95 ",
                                        style: TextStyle(
                                          color: hoverTextColor,
                                          fontSize: 20.sp,
                                          height: 1,
                                          decoration: TextDecoration.underline,
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
                                    Icon(Icons.edit_note_outlined,
                                        size: 20.sp, color: blueAxent),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          6.3,
                                      child: Text(
                                        "d99abf9c-4771-4996-a28b-cd2cb951d2cb951d2cb951",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            height: 1,
                                            fontSize: 20.sp,
                                            color: Colors.blueAccent),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                        SizedBox(
                          width: width * 0.090,
                        ),
                        KText(
                          text: "External Comments",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ]),
                ),
                SizedBox(
                  height: height * 0.030,
                ),
                Container(
                  height: fileCompletionBool ? height / 1.2 : height / 10,
                  width: width,
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
                  padding: EdgeInsets.only(
                      left: 20.w, top: fileCompletionBool ? 20.h : 25.h),
                  child: Column(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fileCompletionBool = !fileCompletionBool;
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            fileCompletionBool
                                ? Icons.keyboard_arrow_down_rounded
                                : Icons.arrow_forward_ios_outlined,
                            color: blackColors,
                            size: fileCompletionBool ? 35.sp : 18.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          KText(
                            text: "Basic| Completion: 0%",
                            width: width,
                            fs: width * 0.013,
                            fw: FontWeight.w500,
                            colour: blackColors,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    fileCompletionBool
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  KText(
                                    text: "Field name",
                                    width: width,
                                    fs: width * 0.013,
                                    fw: FontWeight.w800,
                                    colour: blackColors,
                                  ),
                                  SizedBox(
                                    width: width / 15,
                                  ),
                                  KText(
                                    text: "Initial value",
                                    width: width,
                                    fs: width * 0.013,
                                    fw: FontWeight.w800,
                                    colour: blackColors,
                                  ),
                                  SizedBox(
                                    width: width / 7.3,
                                  ),
                                  KText(
                                    text: "Extracted value",
                                    width: width,
                                    fs: width * 0.013,
                                    fw: FontWeight.w800,
                                    colour: blackColors,
                                  ),
                                  SizedBox(
                                    width: width / 7.5,
                                  ),
                                  KText(
                                    text: "Status",
                                    width: width,
                                    fs: width * 0.013,
                                    fw: FontWeight.w800,
                                    colour: blackColors,
                                  ),
                                  SizedBox(
                                    width: width / 5,
                                  ),
                                  KText(
                                    text: "Comments",
                                    width: width,
                                    fs: width * 0.013,
                                    fw: FontWeight.w800,
                                    colour: blackColors,
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height / 1.6,
                                    width: width / 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        KText(
                                            width: width,
                                            text: "Status",
                                            colour: blackColors),
                                        SizedBox(
                                          height: height * 0.0120,
                                        ),
                                        KText(
                                            width: width,
                                            text: "File",
                                            colour: blackColors),
                                        SizedBox(
                                          height: height * 0.01,
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: height / 5,
                                      ),
                                      Container(
                                          height: height / 2,
                                          width: width / 5.9,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3.0,
                                                    spreadRadius: 2,
                                                    color: lightGrey
                                                        .withOpacity(0.4))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15.r)),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15.r),
                                                child: Image(
                                                  image: AssetImage(
                                                    "assets/images/document.png",
                                                  ),
                                                  height: height / 1.1,
                                                  width: width / 3,
                                                ),
                                              ),
                                              Positioned(
                                                top: height * 0.02,
                                                right: width * 0.01,
                                                child: Tooltip(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.white),
                                                  message: "Download File",
                                                  child: Container(
                                                    height: height * 0.05,
                                                    width: width * 0.03,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: blackColors,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.r),
                                                    ),
                                                    child: Icon(
                                                      Icons.download,
                                                      color: whiteColors,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * 0.030,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height * 0.050,
                                      ),
                                      DropDownWithBorder(
                                          backgroundColor: whiteColors,
                                          w: width / 5,
                                          h: 50.h,
                                          list: companiesList,
                                          selectedValue: companiesList[0],
                                          iconAndTextColor: blackColors,
                                          itemtextColor: blackColors),
                                      SizedBox(
                                        height: height / 3.6,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            // imageGetNotNull = true;
                                          });
                                          // _selectFile(true);
                                        },
                                        child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.080,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.add,
                                                    color: blueAxent),
                                                Text(
                                                  "Add File",
                                                  style: TextStyle(
                                                      fontSize: 20.sp,
                                                      color: blueAxent),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 450.h,
                                    width: 410.w,
                                    color: whiteColors,
                                    child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 2,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return StatusForensicButtonColumn();
                                        }),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: height / 18.6,
                                      ),
                                      CommentButton(context, width, height),
                                      SizedBox(
                                        height: height / 4,
                                      ),
                                      CommentButton(context, width, height),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        : SizedBox(),
                  ]),
                ),
                SizedBox(
                  height: height * 0.030,
                ),
              ]),
        )));
  }

  InkWell CommentButton(BuildContext context, double width, double height) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  // height: height + 200.h,
                  child: AlertDialog(
                      scrollable: true,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: "Edit Comments",
                            width: width,
                            fw: FontWeight.w800,
                            fs: width * 0.012,
                            colour: blackColors,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.cancel))
                        ],
                      ),
                      content: Container(
                          width: width * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                  width: width,
                                  height: height * 0.1,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h, horizontal: 20.w),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.1.w,
                                          color: blackColors.withOpacity(0.5))),
                                  child: TextFormField(
                                    controller:
                                        addForensicStatusCommentControllar,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                        hintText: "Add New Comment"),
                                  )),
                              SizedBox(
                                height: 20.h,
                              ),
                              kButton(
                                  onPressed: () {
                                    setState(() {
                                      ComentsList.add(AddCommentModel(
                                          comment:
                                              addForensicStatusCommentControllar
                                                  .text
                                                  .toString()));
                                    });
                                    print("................................." +
                                        ComentsList[index].comment.toString());
                                  },
                                  h: 50.h,
                                  w: width,
                                  textColor: whiteColors,
                                  colour: blueAxent.withOpacity(0.7),
                                  text: "Add Comment")
                            ],
                          ))));
            });
      },
      child: Container(
        height: 40.h,
        width: width * 0.05,
        // margin: EdgeInsets.only(top: 20.h),
        decoration: BoxDecoration(
            color: lightGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.insert_comment_rounded,
              size: 24.sp,
              color: blackColors,
            ),
            Container(
              height: 25.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: whiteColors, borderRadius: BorderRadius.circular(5.r)),
              child: Center(
                child: KText(
                  text: "0",
                  width: width,
                  fs: width * 0.011,
                  fw: FontWeight.w100,
                  colour: blackColors,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
