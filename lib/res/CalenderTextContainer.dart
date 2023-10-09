import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Providers/CalenderProvider.dart';
import 'package:global_compliance/Views/Testing/utils.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderTextContainer extends StatefulWidget {
  CalenderTextContainer(
      {super.key,
      required this.width,
      required this.defaultCalenderText,
      required this.ScreenNameDate,
      required this.w,
      required this.h});
  double width;
  String defaultCalenderText;
  String ScreenNameDate;
  double w, h;
  @override
  State<CalenderTextContainer> createState() => _CalenderTextContainerState();
}

class _CalenderTextContainerState extends State<CalenderTextContainer> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Consumer<CalenderProvider>(
      builder: (context, value, child) {
        return InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                // bool showDropDown = false;
                return StatefulBuilder(
                  builder: (context, setState) {
                    return AlertDialog(
                      // alignment: Alignment.centerLeft,
                      titlePadding: EdgeInsets.zero,
                      title: Container(
                        height: 500.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r)),
                        child: TableCalendar(
                          calendarStyle: CalendarStyle(),
                          rowHeight: 60.h,
                          daysOfWeekStyle: DaysOfWeekStyle(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 196, 192, 192),
                            ),
                          ),
                          daysOfWeekHeight: 55.h,
                          headerStyle: HeaderStyle(
                              headerPadding: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 196, 192, 192)),
                              titleTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              titleCentered: true,
                              formatButtonVisible: false,
                              formatButtonShowsNext: false),
                          firstDay: kFirstDay,
                          lastDay: kLastDay,
                          focusedDay: now,
                          calendarFormat: _calendarFormat,
                          selectedDayPredicate: (day) {
                            // Use `selectedDayPredicate` to determine which day is currently selected.
                            // If this returns true, then `day` will be marked as selected.
                            // Using `isSameDay` is recommended to disregard
                            // the time-part of compared DateTime objects.
                            return isSameDay(
                                widget.ScreenNameDate ==
                                        "AccountingFromSelectedDate"
                                    ? value.AccountingFromSelectedDate
                                    : widget.ScreenNameDate ==
                                            "AccountingToSelectedDate"
                                        ? value.AccountingToSelectedDate
                                        : widget.ScreenNameDate ==
                                                "KpiFromSelectedDate"
                                            ? value.KpiFromSelectedDate
                                            : widget.ScreenNameDate ==
                                                    "KpiToSelectedDate"
                                                ? value.KpiToSelectedDate
                                                : widget.ScreenNameDate ==
                                                        "ScreeningFromSelectedDate"
                                                    ? value
                                                        .ScreeningFromSelectedDate
                                                    :
                                                    // : widget.ScreenNameDate ==
                                                    //         "ScreeningToSelectedDate"
                                                    //     ?
                                                    value
                                                        .ScreeningToSelectedDate,
                                day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            if (!isSameDay(
                                widget.ScreenNameDate ==
                                        "AccountingFromSelectedDate"
                                    ? value.AccountingFromSelectedDate
                                    : widget.ScreenNameDate ==
                                            "KpiFromSelectedDate"
                                        ? value.KpiFromSelectedDate
                                        : widget.ScreenNameDate ==
                                                "KpiToSelectedDate"
                                            ? value.KpiToSelectedDate
                                            : widget.ScreenNameDate ==
                                                    "ScreeningFromSelectedDate"
                                                ? value
                                                    .ScreeningFromSelectedDate
                                                : widget.ScreenNameDate ==
                                                        "ScreeningToSelectedDate"
                                                    ? value
                                                        .ScreeningToSelectedDate
                                                    : value
                                                        .AccountingToSelectedDate,
                                selectedDay)) {
                              // Call `setState()` when updating the selected day
                              widget.ScreenNameDate ==
                                      "AccountingFromSelectedDate"
                                  ? value.setAccountingFromSelectedDate(
                                      selectedDay)
                                  : widget.ScreenNameDate ==
                                          "AccountingToSelectedDate"
                                      ? value.setAccountingToSelectedDate(
                                          selectedDay)
                                      : widget.ScreenNameDate ==
                                              "KpiFromSelectedDate"
                                          ? value.setKpiFromSelectedDate(
                                              selectedDay)
                                          : widget.ScreenNameDate ==
                                                  "KpiToSelectedDate"
                                              ? value.setKpiToSelectedDate(
                                                  selectedDay)
                                              : widget.ScreenNameDate ==
                                                      "ScreeningFromSelectedDate"
                                                  ? value
                                                      .setScreeningFromSelectedDate(
                                                          selectedDay)
                                                  // : widget.ScreenNameDate ==
                                                  //         "ScreeningToSelectedDate"
                                                  //     ?
                                                  : value
                                                      .setScreeningToSelectedDate(
                                                          selectedDay);
                              setState(() {
                                now = focusedDay;
                              });
                              Navigator.pop(context);
                              print(value.AccountingFromSelectedDate);
                            }
                          },
                          onFormatChanged: (format) {
                            DateTime CalenderSelectedFromScreen = widget
                                        .ScreenNameDate ==
                                    "AccountingFromSelectedDate"
                                ? value.AccountingFromSelectedDate!
                                : widget.ScreenNameDate ==
                                        "AccountingToSelectedDate"
                                    ? value.AccountingToSelectedDate!
                                    : widget.ScreenNameDate ==
                                            "KpiFromSelectedDate"
                                        ? value.KpiFromSelectedDate!
                                        : widget.ScreenNameDate ==
                                                "KpiToSelectedDate"
                                            ? value.KpiToSelectedDate!
                                            : widget.ScreenNameDate ==
                                                    "ScreeningFromSelectedDate"
                                                ? value
                                                    .ScreeningFromSelectedDate!
                                                :
                                                // : widget.ScreenNameDate ==
                                                //         "ScreeningToSelectedDate"
                                                // ?
                                                value.ScreeningToSelectedDate!;

                            if (CalenderSelectedFromScreen != format) {
                              // Call `setState()` when updating calendar format

                              setState(() {
                                _calendarFormat = format;
                              });
                            }
                          },
                          onPageChanged: (focusedDay) {
                            // No need to call `setState()` here
                            now = focusedDay;
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Container(
            width: widget.w.w,
            height: widget.h.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromARGB(255, 68, 67, 67),
                  width: 1.w,
                  strokeAlign: BorderSide.strokeAlignOutside,
                )),
            child: Align(
              alignment: Alignment.centerLeft,
              child: KText(
                text: widget.ScreenNameDate == "AccountingFromSelectedDate"
                    ? value.AccountingFromSelectedDate != null
                        ? formatter.format(value.AccountingFromSelectedDate!)
                        : widget.defaultCalenderText
                    : widget.ScreenNameDate == "AccountingToSelectedDate"
                        ? value.AccountingToSelectedDate != null
                            ? formatter.format(value.AccountingToSelectedDate!)
                            : widget.defaultCalenderText
                        : widget.ScreenNameDate == "KpiFromSelectedDate"
                            ? value.KpiFromSelectedDate != null
                                ? formatter.format(value.KpiFromSelectedDate!)
                                : widget.defaultCalenderText
                            : widget.ScreenNameDate == "KpiToSelectedDate"
                                ? value.KpiToSelectedDate != null
                                    ? formatter.format(value.KpiToSelectedDate!)
                                    : widget.defaultCalenderText
                                : widget.ScreenNameDate ==
                                        "ScreeningFromSelectedDate"
                                    ? value.ScreeningFromSelectedDate != null
                                        ? formatter.format(
                                            value.ScreeningFromSelectedDate!)
                                        : widget.defaultCalenderText
                                    : widget.ScreenNameDate ==
                                            "ScreeningToSelectedDate"
                                        ? value.ScreeningToSelectedDate != null
                                            ? formatter.format(
                                                value.ScreeningToSelectedDate!)
                                            : widget.defaultCalenderText
                                        : widget.defaultCalenderText,
                width: widget.width,
                fs: widget.width * 0.011,
                colour: blackColors.withOpacity(0.5),
              ),
            ),
          ),
        );
      },
    );
  }
}
