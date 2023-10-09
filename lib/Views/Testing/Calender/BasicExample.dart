// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:global_compliance/Views/Testing/utils.dart';
// import 'package:table_calendar/table_calendar.dart';

// class TableBasicsExample extends StatefulWidget {
//   static var selectedDay;

//   @override
//   _TableBasicsExampleState createState() => _TableBasicsExampleState();
// }

// class _TableBasicsExampleState extends State<TableBasicsExample> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar - Basics'),
//       ),
//       body: Center(
//         child: Container(
//           height: 330.h,
//           width: 310.w,
//           decoration: BoxDecoration(
//               border: Border.all(width: 0.2.w, color: Colors.black)),
//           child: TableCalendar(
//             calendarStyle: CalendarStyle(),
//             rowHeight: 40.h,
//             daysOfWeekStyle: DaysOfWeekStyle(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 196, 192, 192),
//               ),
//             ),
//             headerStyle: HeaderStyle(
//                 headerPadding: EdgeInsets.only(top: 8.h, bottom: 4.h),
//                 decoration:
//                     BoxDecoration(color: Color.fromARGB(255, 196, 192, 192)),
//                 titleTextStyle: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//                 titleCentered: true,
//                 formatButtonVisible: false,
//                 formatButtonShowsNext: false),
//             firstDay: kFirstDay,
//             lastDay: kLastDay,
//             focusedDay: _focusedDay,
//             calendarFormat: _calendarFormat,
//             selectedDayPredicate: (day) {
//               // Use `selectedDayPredicate` to determine which day is currently selected.
//               // If this returns true, then `day` will be marked as selected.

//               // Using `isSameDay` is recommended to disregard
//               // the time-part of compared DateTime objects.
//               return isSameDay(_selectedDay, day);
//             },
//             onDaySelected: (selectedDay, focusedDay) {
//               if (!isSameDay(_selectedDay, selectedDay)) {
//                 // Call `setState()` when updating the selected day
//                 setState(() {
//                   _selectedDay = selectedDay;
//                   _focusedDay = focusedDay;
//                 });
//               }
//             },
//             onFormatChanged: (format) {
//               if (_calendarFormat != format) {
//                 // Call `setState()` when updating calendar format
//                 setState(() {
//                   _calendarFormat = format;
//                 });
//               }
//             },
//             onPageChanged: (focusedDay) {
//               // No need to call `setState()` here
//               _focusedDay = focusedDay;
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
