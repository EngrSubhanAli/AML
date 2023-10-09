import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/kTextField.dart';

class SearchRowForensicScreen extends StatelessWidget {
  const SearchRowForensicScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KTextFieldwithShadow(
          hintText: 'Text Search',
          w: 400.w,
        ),
        SizedBox(
          width: 40.w,
        ),
        DropDownWithBorder(
            backgroundColor: Colors.white,
            w: 400.w,
            list: ForensicStatusList,
            selectedValue: ForensicStatusList[0],
            iconAndTextColor: Colors.black,
            itemtextColor: blackColors),
        SizedBox(
          width: 40.w,
        ),
        DropDownWithBorder(
            backgroundColor: whiteColors,
            w: 400.w,
            list: companiesList,
            selectedValue: companiesList[0],
            iconAndTextColor: blackColors,
            itemtextColor: blackColors),
        SizedBox(
          width: 40.w,
        ),
        Icon(Icons.cancel_outlined)
      ],
    );
  }
}
