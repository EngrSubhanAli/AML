import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/CalenderTextContainer.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/DropDownWithBorder.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/Testing/utils.dart';

class AccountingScreen extends StatefulWidget {
  AccountingScreen({super.key});

  @override
  State<AccountingScreen> createState() => _AccountingScreenState();
}

class _AccountingScreenState extends State<AccountingScreen> {
  TextEditingController textController = TextEditingController();
  String? selectedValue;
  DateTime selectedDate = DateTime(kToday.year, kToday.month - 3, kToday.day);
  String? selectedValue1 = 'Test Company';

  Future<DateTime?> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        String convertedDateTime =
            "${picked.year.toString()}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
        // widget.textController.value = TextEditingValue(text: picked.toString());

        textController.value = TextEditingValue(text: convertedDateTime);
        ;
      });
    return selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var index = 0;
    return Scaffold(
      backgroundColor: whiteColors,
      body: Padding(
        padding: EdgeInsets.only(
          left: 37.w,
          right: 55.w,
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
            KText(
              text: "Accounting",
              width: width,
              fw: FontWeight.bold,
              fs: width * 0.026,
              colour: blackColors,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: whiteColors,
                boxShadow: [
                  BoxShadow(
                    color: lightGrey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: DataTable(
                // datatable widget
                columns: [
                  // column to set the name
                  DataColumn(
                    label: KText(
                      text: "Company",
                      width: width,
                      fw: FontWeight.bold,
                      fs: width * 0.014,
                      colour: blackColors,
                    ),
                  ),
                  DataColumn(
                    label: KText(
                      text: 'Requires Manual Completion',
                      width: width,
                      fw: FontWeight.bold,
                      fs: width * 0.014,
                      colour: blackColors,
                    ),
                  ),
                  DataColumn(
                    label: KText(
                      text: 'Auto Completed',
                      width: width,
                      fw: FontWeight.bold,
                      fs: width * 0.014,
                      colour: blackColors,
                    ),
                  ),
                ],

                rows: [
                  // row to set the values
                  DataRow(cells: [
                    DataCell(
                      KText(
                        text: 'Test Company',
                        width: width,
                        // fw: FontWeight.bold,
                        fs: width * 0.013,
                        colour: blackColors,
                      ),
                    ),
                    DataCell(
                      KText(
                        text: '   1',
                        width: width,
                        // fw: FontWeight.bold,
                        fs: width * 0.012,
                        colour: blueAxent,
                      ),
                    ),
                    DataCell(
                      KText(
                        text: '   1',
                        width: width,
                        // fw: FontWeight.bold,
                        fs: width * 0.012,
                        colour: blueAxent,
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      KText(
                        text: 'FINCLEAR AG',
                        width: width,
                        fs: width * 0.013,
                        colour: blackColors,
                      ),
                    ),
                    DataCell(
                      KText(
                        text: '   1',
                        width: width,
                        fs: width * 0.012,
                        colour: blueAxent,
                      ),
                    ),
                    DataCell(
                      KText(
                        text: '   1',
                        width: width,
                        fs: width * 0.012,
                        colour: blueAxent,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 66.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: KText(
                text: "Accounting",
                width: width,
                fw: FontWeight.bold,
                fs: width * 0.026,
                colour: blackColors,
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            ContainersRow(context, width),
          ],
        ),
      ),
    );
  }

  Row ContainersRow(
    BuildContext context,
    double width,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropDownWithBorder(
            backgroundColor: whiteColors,
            w: 280.w,
            list: companiesList,
            selectedValue: companiesList[0],
            iconAndTextColor: blackColors,
            itemtextColor: blackColors),
        CalenderTextContainer(
          width: width,
          defaultCalenderText: "From Date",
          ScreenNameDate: "AccountingFromSelectedDate",
          w: 400,
          h: 40,
        ),
        // KTextFieldwithShadow(
        //   hintText: 'To Date',
        //   w: 400.w,
        //   h: 40.h,
        // ),
        CalenderTextContainer(
          width: width,
          defaultCalenderText: "To Date",
          ScreenNameDate: "AccountingToSelectedDate",
          w: 400,
          h: 40,
        ),
        kButton(
          h: MediaQuery.of(context).size.height * 0.055,
          w: 430.w,
          text: 'Search',
          textSiz: 20.sp,
          textColor: whiteColors,
          colour: blueAxent,
        )
      ],
    );
  }
}
