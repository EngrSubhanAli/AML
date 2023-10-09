import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/MatchScoreContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ScreeningReportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/BasicCompletionColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ButtonsColumnScreeningDetailScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/DetailsColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/ExtractedvaluesColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/StatusButtonsContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningTokenDetailScreen/kButtonWithTextIcon.dart';
import 'package:global_compliance/Views/Testing/MultiSelectTags/MultiSelectTags.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/view_Models/Models.dart';
import 'package:hovering/hovering.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

bool similerscreeningBool = false;
bool forensicAnalysisBool = false;
bool BasicCompletionBool = true;
List<AddCommentModel> ComentsList = [];
List<String>? selectedDataString;

class ScreeningTokenDetailScreen extends StatefulWidget {
  const ScreeningTokenDetailScreen({super.key});

  @override
  State<ScreeningTokenDetailScreen> createState() =>
      _ScreeningTokenDetailScreenState();
}

class _ScreeningTokenDetailScreenState
    extends State<ScreeningTokenDetailScreen> {
  static List<TagsModel> TagsList = [
    TagsModel(name: "Select"),
    TagsModel(name: "Suspicious"),
    TagsModel(name: "Blacklisted"),
    TagsModel(name: "Frozen"),
    TagsModel(name: "Mobule"),
  ];
  List<TagsModel> _selectedTags = [];

  final _items =
      TagsList.map((animal) => MultiSelectItem<TagsModel>(animal, animal.name!))
          .toList();
  TextEditingController addCommentControllar = TextEditingController();
  int value = 25;
  bool firstRow = false;

  @override
  Widget build(BuildContext context) {
    List<String> selectedTag = [];
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
                                ScreeningsScreen(),
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
                    KText(
                      text: "Screenings",
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
                  child: Row(children: [
                    ButtonsColumnScreeningDetailScreen(
                      width: width,
                      height: height,
                    ),
                    DetailsColumn(
                      width: width,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.w),
                      child: SingleChildScrollView(
                          child: StatusColumn(width, height)),
                    ),
                    CommentsColumnWidget(width, context, height),
                  ]),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SimilarScreeningContainer(height, width),
                SizedBox(
                  height: 30.h,
                ),
                forensicAnalysisContainer(height, width),
                SizedBox(
                  height: 30.h,
                ),
                RequestedInformationContainer(height, width),
                SizedBox(
                  height: 30.h,
                ),
                BasicCompletionContainer(height, width, context),
                SizedBox(
                  height: 30.h,
                ),
                MatchScoreContainer(width: width, height: height),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: height / 8,
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
                    left: 20.w,
                  ),
                  child: Row(
                    children: [
                      KText(
                        text: "Audit Log",
                        width: width,
                        fs: width * 0.013,
                        fw: FontWeight.w500,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      KText(
                        text: " (0 entries)",
                        width: width,
                        fs: width * 0.011,
                        fw: FontWeight.w300,
                        colour: blackColors,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ]),
        ),
      ),
    );
  }

  Container BasicCompletionContainer(
      double height, double width, BuildContext context) {
    return Container(
      height: BasicCompletionBool ? height / 1.3 : height / 10,
      width: width,
      decoration: BoxDecoration(
        color: whiteColors,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
      ),
      padding:
          EdgeInsets.only(left: 20.w, top: BasicCompletionBool ? 20.h : 25.h),
      child: Column(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              BasicCompletionBool = !BasicCompletionBool;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                BasicCompletionBool
                    ? Icons.keyboard_arrow_down_rounded
                    : Icons.arrow_forward_ios_outlined,
                color: blackColors,
                size: BasicCompletionBool ? 35.sp : 18.sp,
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
        BasicCompletionBool
            ? Column(
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
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BasicCompletionColumn(
                        width: width,
                        height: height,
                        PersonalIdentificationNumber:
                            "Personal Identification\nNumber",
                        GivenNames: "Given Names ",
                        Surname: 'Surname',
                        Gender: 'Gender',
                        DoB: 'Date of Birth',
                        Nationality: 'Nationality',
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      BasicCompletionColumn(
                        width: width,
                        height: height,
                        PersonalIdentificationNumber: "\n",
                        GivenNames: "Tugdual Alain Vincent Eliott",
                        Surname: 'Chitrit',
                        Gender: "Male",
                        DoB: '04/10/2003',
                        Nationality: 'French',
                      ),
                      ExtractedvaluesColumn(width: width, height: height),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: 450.h,
                        width: 348.w,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return StatusButtonsContainer();
                            }),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.01,
                          ),
                          addNewCommentButton(context, width, height),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          addNewCommentButton(context, width, height),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          addNewCommentButton(context, width, height),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          addNewCommentButton(context, width, height),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          addNewCommentButton(context, width, height),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          addNewCommentButton(context, width, height),
                        ],
                      )
                    ],
                  )
                ],
              )
            : SizedBox(),
      ]),
    );
  }

  InkWell addNewCommentButton(
      BuildContext context, double width, double height) {
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
                                    controller: addCommentControllar,
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
                                          comment: addCommentControllar.text
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

  Container RequestedInformationContainer(double height, double width) {
    return Container(
      height: height / 8,
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
        left: 20.w,
      ),
      child: Row(
        children: [
          KText(
            text: "Requested information:",
            width: width,
            fs: width * 0.013,
            fw: FontWeight.w500,
            colour: blackColors,
          ),
          SizedBox(
            width: 20.w,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(width: 0.1),
                color: lightGrey),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (documentsBtnColor == grey) {
                        documentsBtnColor = redColor;
                        SelectedDocumentsBtnColor = redColor;
                        documentsBtnTextColor = whiteColors;
                      } else if (documentsBtnColor == redColor) {
                        documentsBtnColor = grey;
                        SelectedDocumentsBtnColor = whiteColors;
                        documentsBtnTextColor = grey;
                      }
                    });
                  },
                  child: HoverWidget(
                    hoverChild: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                        color: documentsBtnColor,
                        border:
                            Border.all(width: 0.5.w, color: documentsBtnColor),
                      ),
                      child: Center(
                        child: Text(
                          'Documents',
                          style: TextStyle(color: whiteColors, fontSize: 17.sp),
                        ),
                      ),
                    ),
                    onHover: (event) {},
                    child: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                          color: SelectedDocumentsBtnColor,
                          border: Border.all(
                              width: 0.5.w, color: biometricBtnColor)),
                      child: Center(
                        child: Text(
                          'Documents',
                          style: TextStyle(
                              color: documentsBtnTextColor, fontSize: 17.sp),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (addressBtnColor == grey) {
                        addressBtnColor = redColor;
                        SelectedAdresBtnColor = redColor;
                        adressBtnTextColor = whiteColors;
                      } else if (addressBtnColor == redColor) {
                        addressBtnColor = grey;
                        SelectedAdresBtnColor = whiteColors;
                        adressBtnTextColor = grey;
                      }
                    });
                  },
                  child: HoverWidget(
                    hoverChild: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                        color: addressBtnColor,
                        border:
                            Border.all(width: 0.5.w, color: addressBtnColor),
                      ),
                      child: Center(
                        child: Text(
                          'Address',
                          style: TextStyle(color: whiteColors, fontSize: 17.sp),
                        ),
                      ),
                    ),
                    onHover: (event) {},
                    child: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                          color: SelectedAdresBtnColor,
                          border: Border.all(width: 0.5.w, color: grey)),
                      child: Center(
                        child: Text(
                          'Address',
                          style: TextStyle(
                              color: adressBtnTextColor, fontSize: 17.sp),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (biometricBtnColor == grey) {
                        biometricBtnColor = redColor;
                        SelectedBiometricBtnColor = redColor;
                        biometricbtnTextColor = whiteColors;
                      } else if (biometricBtnColor == redColor) {
                        biometricBtnColor = grey;
                        SelectedBiometricBtnColor = whiteColors;
                        biometricbtnTextColor = grey;
                      }
                    });
                  },
                  child: HoverWidget(
                    hoverChild: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                        color: biometricBtnColor,
                        border:
                            Border.all(width: 0.5.w, color: biometricBtnColor),
                      ),
                      child: Center(
                        child: Text(
                          'Biometrics',
                          style: TextStyle(color: whiteColors, fontSize: 17.sp),
                        ),
                      ),
                    ),
                    onHover: (event) {},
                    child: Container(
                      height: 40.h,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                          color: SelectedBiometricBtnColor,
                          border: Border.all(width: 0.5.w, color: grey)),
                      child: Center(
                        child: Text(
                          'Biometrics',
                          style: TextStyle(
                              color: biometricbtnTextColor, fontSize: 17.sp),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container forensicAnalysisContainer(double height, double width) {
    return Container(
      height: forensicAnalysisBool ? height / 5 : height / 10,
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
      padding:
          EdgeInsets.only(left: 20.w, top: forensicAnalysisBool ? 20.h : 25.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                forensicAnalysisBool = !forensicAnalysisBool;
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  forensicAnalysisBool
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.arrow_forward_ios_outlined,
                  color: blackColors,
                  size: forensicAnalysisBool ? 35.sp : 18.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                KText(
                  text: "Forensic Analysis (0)",
                  width: width,
                  fs: width * 0.013,
                  fw: FontWeight.w500,
                  colour: blackColors,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          forensicAnalysisBool
              ? Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        KText(
                          text: "Id",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        KText(
                          text: "Screening Token",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.08,
                        ),
                        KText(
                          text: "Tag",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        KText(
                          text: "Status",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        KText(
                          text: "Created",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider()
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Container SimilarScreeningContainer(double height, double width) {
    return Container(
      height: similerscreeningBool ? height / 3 : height / 10,
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
      padding:
          EdgeInsets.only(left: 20.w, top: similerscreeningBool ? 20.h : 25.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                similerscreeningBool = !similerscreeningBool;
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  similerscreeningBool
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.arrow_forward_ios_outlined,
                  color: blackColors,
                  size: similerscreeningBool ? 35.sp : 18.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                KText(
                  text: "Similar Screenings",
                  width: width,
                  fs: width * 0.013,
                  fw: FontWeight.w500,
                  colour: blackColors,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          similerscreeningBool
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(
                      text: "Biometric Matches",
                      width: width,
                      fs: width * 0.012,
                      fw: FontWeight.w100,
                      colour: blackColors,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        KText(
                          text: "Similarity",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        KText(
                          text: "Name",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        KText(
                          text: "Tags",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        KText(
                          text: "Document Number",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        KText(
                          text: "Nationality",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.09,
                        ),
                        KText(
                          text: "Status",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.09,
                        ),
                        KText(
                          text: "Company",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    KText(
                      text: "Data Matches",
                      width: width,
                      fs: width * 0.012,
                      fw: FontWeight.w100,
                      colour: blackColors,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        KText(
                          text: "Name",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        KText(
                          text: "Tags",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        KText(
                          text: "Document Number",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        KText(
                          text: "Nationality",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.09,
                        ),
                        KText(
                          text: "Status",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                        SizedBox(
                          width: width * 0.09,
                        ),
                        KText(
                          text: "Company",
                          width: width,
                          fs: width * 0.013,
                          fw: FontWeight.w500,
                          colour: blackColors,
                        ),
                      ],
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Padding CommentsColumnWidget(
      double width, BuildContext context, double height) {
    return Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(
              text: "External Comments",
              width: width,
              fs: width * 0.013,
              fw: FontWeight.w100,
              colour: blackColors,
            ),
            SizedBox(
              height: 15.h,
            ),
            KText(
              text: "Internal Comments",
              width: width,
              fs: width * 0.013,
              fw: FontWeight.w100,
              colour: blackColors,
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          // height: height + 200.h,
                          child: AlertDialog(
                              scrollable: true,
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      // Expanded(
                                      //   child: ListView.builder(
                                      //       itemCount: ComentsList.length,
                                      //       itemBuilder: (BuildContext, int) {
                                      //         return Column(
                                      //           children: [
                                      //             Container(
                                      //               height: 120.h,
                                      //               child: Row(
                                      //                 children: [
                                      //                   Container(
                                      //                       width: 40.w,
                                      //                       height: 40.h,
                                      //                       color: lightGrey
                                      //                           .withOpacity(
                                      //                               0.1),
                                      //                       child: Icon(
                                      //                         Icons.delete,
                                      //                         color:
                                      //                             blackColors,
                                      //                         size: 25.sp,
                                      //                       )),
                                      //                   SizedBox(
                                      //                     width: 20.w,
                                      //                   ),
                                      //                   KText(
                                      //                     text: "Comments",
                                      //                     width: width,
                                      //                     fw: FontWeight.w200,
                                      //                     fs: width * 0.012,
                                      //                     colour: blackColors,
                                      //                   ),
                                      //                 ],
                                      //               ),
                                      //             ),
                                      //             SizedBox(
                                      //               height: 20.h,
                                      //             ),
                                      //             Divider(),
                                      //             SizedBox(
                                      //               height: 20.h,
                                      //             ),
                                      //             KText(
                                      //               text: ComentsList[index]
                                      //                   .comment
                                      //                   .toString(),
                                      //               width: width,
                                      //               fw: FontWeight.w200,
                                      //               h: 10.h,
                                      //               fs: width * 0.012,
                                      //               colour: blackColors,
                                      //             ),
                                      //             SizedBox(
                                      //               height: 20.h,
                                      //             ),
                                      //           ],
                                      //         );
                                      //       }),
                                      // ),

                                      Container(
                                          width: width,
                                          height: height * 0.1,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20.h, horizontal: 20.w),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 0.1.w,
                                                  color: blackColors
                                                      .withOpacity(0.5))),
                                          child: TextFormField(
                                            controller: addCommentControllar,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
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
                                                  comment: addCommentControllar
                                                      .text
                                                      .toString()));
                                            });
                                            print(
                                                "................................." +
                                                    ComentsList[index]
                                                        .comment
                                                        .toString());
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
                          color: whiteColors,
                          borderRadius: BorderRadius.circular(5.r)),
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
            )
          ],
        ));
  }

  Column StatusColumn(double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        KText(
          text: "Status",
          width: width,
          fs: width * 0.013,
          fw: FontWeight.w500,
          colour: blackColors,
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            KText(
              text: "Status :",
              width: width,
              fs: width * 0.013,
              fw: FontWeight.w500,
              colour: blackColors,
            ),
            SizedBox(
              width: width * 0.01,
            ),
            Container(
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(width: 0.5, color: blueAxent),
                  color: whiteColors),
              child: KText(
                text: "Manual Screening",
                width: width,
                fs: width * 0.011,
                fw: FontWeight.w200,
                colour: blueAxent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        kButtonWithTextIcon(
            width: width,
            icon: Icons.scatter_plot_rounded,
            text: "Credits",
            btnW: width / 5,
            btnH: height * 0.050,
            btnColor: blueAxent,
            fs: width * 0.011),
        SizedBox(
          height: 15.h,
        ),
        KText(
          text: "Tags :",
          width: width,
          fs: width * 0.013,
          fw: FontWeight.w500,
          colour: blackColors,
        ),
        SizedBox(
          height: 5.h,
        ),
        SingleChildScrollView(
          child: Container(
            // height: 70.h,
            width: 400.w,
            child: CustomMultiSelectField<String>(
              width: 180.w,
              title: "Select",
              items: tagList,
              onSelectionDone: _selectionComplete,
              itemAsString: (item) => item.toString(),
            ),
          ),
        ),
        // MultiSelectDialogField(
        //   onConfirm: (val) {
        //     _selectedTags = val;
        //   },
        //   dialogHeight: height / 3,
        //   dialogWidth: width / 4,
        //   items: _items,
        //   buttonIcon: Icon(
        //     Icons.arrow_downward,
        //     color: Colors.transparent,
        //   ),
        //   itemsTextStyle: TextStyle(fontSize: width * 0.011),
        //   initialValue: _selectedTags,
        //   decoration: BoxDecoration(
        //       border: Border.all(width: 0.3.w, color: blackColors)),
        // ),
      ],
    );
  }

  void _selectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }
}

class TagsModel {
  // final int? id;
  final String? name;

  TagsModel({
    // this.id,
    this.name,
  });
}

List<String> tagList = [
  "Suspicious",
  "Blacklisted",
  "Frozen",
  "Mobile",
];
