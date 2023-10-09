import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/res/CalenderTextContainer.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/kTextField.dart';

class SearchInputsRow extends StatelessWidget {
  SearchInputsRow({Key? key, required this.width}) : super(key: key);
  double width;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.050,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          KTextFieldwithShadow(
            hintText: 'Text Search',
            w: 250.w,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          DropDownWithBorder(
              backgroundColor: Colors.white,
              w: 290.w,
              // h: MediaQuery.of(context).size.height * 0.040,
              list: StatusList,
              selectedValue: StatusList[0],
              iconAndTextColor: Colors.black,
              itemtextColor: blackColors),
          SizedBox(
            width: width * 0.01,
          ),
          DropDownWithBorder(
              backgroundColor: whiteColors,
              w: 260.w,
              // h: MediaQuery.of(context).size.height * 0.040,
              list: companiesList,
              selectedValue: companiesList[0],
              iconAndTextColor: blackColors,
              itemtextColor: blackColors),
          SizedBox(
            width: width * 0.01,
          ),
          CalenderTextContainer(
            width: width,
            defaultCalenderText: "From Date",
            ScreenNameDate: "ScreeningFromSelectedDate",
            w: 215,
            h: 40,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          CalenderTextContainer(
            width: width,
            defaultCalenderText: "To Date",
            ScreenNameDate: "ScreeningToSelectedDate",
            w: 215,
            h: 40,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          DropDownWithBorder(
              backgroundColor: darkGrey.withOpacity(0.7),
              w: width / 9,
              // h: MediaQuery.of(context).size.height * 0.045,
              list: entendedSearchList,
              selectedValue: "Extended Search",
              iconAndTextColor: blackColors,
              itemtextColor: blackColors),
          SizedBox(
            width: width * 0.01,
          ),
          Icon(Icons.cancel_outlined)
        ],
      ),
    );
  }
}
