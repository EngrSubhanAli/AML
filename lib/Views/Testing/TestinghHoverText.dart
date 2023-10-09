// // import 'package:carappui/UI/screens/calander.dart';
// // import 'package:carappui/constants/colors.dart';
// // import 'package:carappui/firebase_Auth/Data_Controller/auth_control.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:dropdown_button2/dropdown_button2.dart';

// // import '../../../flutter_push_notifications/database.dart';
// // import '../../constant.dart' as col;
// // import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:global_compliance/Views/Testing/Calender/BasicExample.dart';
// import 'package:table_calendar/table_calendar.dart';

// class ReminderAlert extends StatefulWidget {
//   @override
//   _ReminderAlertState createState() => _ReminderAlertState();
// }

// // String? date_data = "offf";

// class _ReminderAlertState extends State<ReminderAlert> {
//   int selected = 0;
//   String? NumberPlate;
//   // DateTime _selectedDate = DateTime.now();
//   bool checkvalue = false;
//   // Color color = baseColor;
//   Color color2 = Colors.white;
//   Color? containerColor;
//   final formGlobalKey = GlobalKey<FormState>();
//   String? newdate;

//   String? selectedValue;
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: contentBox(context),
//     );
//   }

//   TextEditingController reminderController = TextEditingController();

//   contentBox(context) {
//     return Container(
//       // width: 1025.w,
//       height: 657,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: Column(
//         children: [
//           // col.fixsize,
//           SizedBox(
//             height: 30.h,
//             child: Text(
//               "Vehicle Insurance Reminder",
//               style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 17,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w500),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           // col.fixsize,
//           // SizedBox(
//           //   // height: 210.h,
//           //   child: DropdownButtonHideUnderline(
//           //     child: DropdownButton2(
//           //       isExpanded: true,
//           //       alignment: Alignment.topCenter,
//           //       hint: Container(
//           //         height: 30.h,
//           //         child: Row(
//           //           children: [
//           //             Expanded(
//           //               // flex: 8,
//           //               child: Text(
//           //                 'Select Vehicle',
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.bold,
//           //                   color: Colors.black,
//           //                 ),
//           //                 overflow: TextOverflow.ellipsis,
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //       items: platesNumberList
//           //           .map((item) => DropdownMenuItem<String>(
//           //                 value: item,
//           //                 child: Row(
//           //                   children: [
//           //                     ImageIcon(
//           //                       AssetImage("assets/images/car.png"),
//           //                       color: blackColor,
//           //                       size: 18.sp,
//           //                     ),
//           //                     col.fixsize1,
//           //                     Text(
//           //                       item,
//           //                       style: const TextStyle(
//           //                         fontSize: 14,
//           //                         fontWeight: FontWeight.bold,
//           //                         color: Colors.black,
//           //                       ),
//           //                       overflow: TextOverflow.ellipsis,
//           //                     ),
//           //                   ],
//           //                 ),
//           //               ))
//           //           .toList(),
//           //       value: selectedValue,
//           //       onChanged: (value) {
//           //         setState(() {
//           //           selectedValue = value as String;
//           //         });
//           //         print(selectedValue);
//           //       },
//           //       icon: const Icon(Icons.keyboard_arrow_down_rounded),
//           //       iconSize: 24.sp,
//           //       iconEnabledColor: baseColor,
//           //       iconDisabledColor: Colors.grey,
//           //       buttonHeight: 50.h,
//           //       buttonWidth: 260.w,
//           //       buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//           //       buttonDecoration: BoxDecoration(
//           //         borderRadius: BorderRadius.circular(14),
//           //         border: Border.all(
//           //           color: Colors.black26,
//           //         ),
//           //         color: whiteColor,
//           //       ),
//           //       // dropdownOverButton: true,
//           //       buttonElevation: 2,
//           //       itemHeight: 40,
//           //       itemPadding: const EdgeInsets.only(left: 14, right: 14),
//           //       dropdownMaxHeight: 200,
//           //       dropdownWidth: 260,

//           //       dropdownPadding: EdgeInsets.only(
//           //         left: 50.w,
//           //       ),
//           //       dropdownDecoration: BoxDecoration(
//           //         borderRadius: BorderRadius.circular(14),
//           //         color: Colors.white,
//           //       ),
//           //       dropdownElevation: 8,
//           //       scrollbarRadius: const Radius.circular(25),
//           //       scrollbarThickness: 6,
//           //       scrollbarAlwaysShow: false,
//           //       offset: const Offset(-20, 0),
//           //     ),
//           //   ),
//           // ),
//           SizedBox(height: 405, child: TableBasicsExample()),
//           // col.fixsize,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.back();
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 45,
//                   width: 121,
//                   decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.1),
//                           spreadRadius: 6,
//                           blurRadius: 20,
//                           offset: Offset(0, 5), // changes position of shadow
//                         ),
//                       ],
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Text(
//                     "Cancel",
//                     style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 17,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   // print("calander data ${TableBasicsExample.selectedDay}");
//                   // print("car data $selectedValue");

//                   // if (TableBasicsExample.selectedDay == null ||
//                   //     selectedValue == null) {
//                   //   // print("null print");2
//                   //   // Get.back();

//                   //   // Get.defaultDialog(
//                   //   //     title: "Please select a vechile & date to continue");
//                   //   Get.snackbar(
//                   //     "Select Vehicle",
//                   //     "Please select a vehicle & date to continue",
//                   //     snackPosition: SnackPosition.BOTTOM,
//                   //     backgroundColor: Colors.grey,
//                   //     colorText: Colors.white,
//                   //   );
//                   // } else {
//                   //   Database().createNotification(
//                   //     whenToNotify:
//                   //         Timestamp.fromDate(TableBasicsExample.selectedDay!),

//                   //     numplate: selectedValue!,

//                   //     // platesNumberList[carNumber].toString(),
//                   //   );
//                   // Get.snackbar(
//                   //   "Vehicle Reminder",
//                   //   "Your vehicle insurance reminder has been set.",
//                   //   snackPosition: SnackPosition.BOTTOM,
//                   //   backgroundColor: greenColor,
//                   //   colorText: whiteColor,
//                   // );
//                   // Navigator.pop(context);
//                   // }
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 45,
//                   width: 121,
//                   decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Text(
//                     "Apply",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class date extends StatelessWidget {
//   const date({
//     Key? key,
//     required this.selected,
//     required this.index,
//     required this.date_data,
//   }) : super(key: key);

//   final int selected;
//   final int index;
//   final String date_data;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       date_data,
//       style: TextStyle(
//         fontSize: 15,
//         fontFamily: 'Poppins',
//         color: selected == index ? Colors.grey : Color(0xff727272),
//       ),
//     );
//   }
// }
