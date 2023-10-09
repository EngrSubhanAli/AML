import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';

class AutoContainer extends StatefulWidget {
  AutoContainer(
      {this.anotherRow,
      this.containerHeading,
      this.FirstFieldHeading,
      this.secondFieldHeading,
      this.thirdFieldHeading,
      this.fourthFieldHeading,
      required this.fourthFieldVisible,
      this.FirstFieldHint,
      this.fourthFieldHint,
      this.secondFieldHint,
      this.thirdFieldHint,
      this.countryList,
      required this.child,
      required this.textInputFieldVisible,
      this.uncertaintyHandlingList,
      this.PepMatchesList,
      this.colour});
  String? containerHeading,
      FirstFieldHeading,
      FirstFieldHint,
      secondFieldHeading,
      secondFieldHint,
      thirdFieldHeading,
      thirdFieldHint,
      fourthFieldHeading,
      fourthFieldHint;
  Color? colour;
  bool fourthFieldVisible, textInputFieldVisible;
  Widget? anotherRow;
  List<String>? countryList;
  // List<String>? itemList2;
  List<String>? uncertaintyHandlingList;
  List<String>? PepMatchesList;
  Widget child;

  @override
  State<AutoContainer> createState() => _AutoContainerState();
}

class _AutoContainerState extends State<AutoContainer> {
  List<String>? selectedDataString;
  dynamic selectedPercentage = "";
  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }

  List<String> dataString = [
    "Auto",
    "Manual Preview",
  ];
  String? selectedString = "Auto";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      // height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
      margin: EdgeInsets.only(
        top: 20.h,
      ),
      decoration: BoxDecoration(
          color: widget.colour,
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            )
          ],
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.containerHeading!,
            style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                // wordSpacing: 10,
                letterSpacing: 1.w),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: Text(
                  widget.FirstFieldHeading!,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.w),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: Text(
                  widget.secondFieldHeading!,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 1.w),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          widget.child,
          SizedBox(
            height: 15.h,
          ),
          Divider(),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: KText(
                  text: widget.thirdFieldHeading!,
                  width: width,
                  fw: FontWeight.w300,
                  fs: width * 0.012,
                  colour: blackColors,
                ),
              ),
              widget.fourthFieldVisible
                  ? Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: KText(
                        text: widget.fourthFieldHeading!,
                        width: width,
                        fw: FontWeight.w300,
                        fs: width * 0.012,
                        colour: blackColors,
                      ))
                  : SizedBox(),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.textInputFieldVisible
                  ? KTextFieldwithShadow(
                      hintText: '18',
                      borderRadius: 30.r, 
                      w: 790.w,
                    )
                  : Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: CustomSingleSelectField<String>(
                        items: ListAMLOFACPEPMatches,
                        title: "",
                        initialValue: "AML / OFAC / PEP Matches",
                        onSelectionDone: (value) {
                          selectedPercentage = value;
                          setState(() {});
                        },
                        itemAsString: (item) => item.toString(),
                      ),
                    ),
              widget.fourthFieldVisible
                  ? Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: CustomSingleSelectField<String>(
                        items: dataString,
                        title: "",
                        initialValue: "Auto",
                        onSelectionDone: (value) {
                          selectedString = value;
                          setState(() {});
                        },
                        itemAsString: (item) => item.toString(),
                      ),
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                    ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
