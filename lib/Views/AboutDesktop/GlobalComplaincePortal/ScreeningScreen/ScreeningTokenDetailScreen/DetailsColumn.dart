import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningReportScreen/ScreeningReportScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/ScreeningScreen/ScreeningScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:hovering/hovering.dart';

class DetailsColumn extends StatefulWidget {
  const DetailsColumn({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  State<DetailsColumn> createState() => _DetailsColumnState();
}

class _DetailsColumnState extends State<DetailsColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40.w),
      width: widget.width / 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          KText(
            text: "Details",
            width: widget.width,
            fs: widget.width * 0.013,
            fw: FontWeight.w500,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreeningReportScreen()));
            },
            child: HoverWidget(
              hoverChild: Row(
                children: [
                  Icon(
                    Icons.file_copy,
                    color: hoverTextColor,
                    size: widget.width * 0.012,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.005,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 10,
                    child: Text(
                      "Report",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: hoverTextColor,
                        fontSize: widget.width * 0.012,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              onHover: (event) {
                // _key.currentState
                setState(() {
                  hoverTextColor = Color.fromARGB(255, 81, 136, 180);
                });
              },
              child: Row(
                children: [
                  Icon(Icons.file_copy, size: 20.sp, color: blueAxent),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.005,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 10,
                    child: Text(
                      "Report",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20.sp, color: blueAxent),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "Company:",
            width: widget.width,
            fs: widget.width * 0.013,
            fw: FontWeight.w500,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "SIGTAX AG:",
            width: widget.width,
            fs: widget.width * 0.011,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "Screening Token:",
            width: widget.width,
            fs: widget.width * 0.013,
            fw: FontWeight.w500,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "105acd6d-942f-4216-8f34-fb3e071f8629",
            width: widget.width,
            fs: widget.width * 0.011,
            // fw: FontWeight.w100,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "Created:",
            width: widget.width,
            fs: widget.width * 0.013,
            fw: FontWeight.w500,
            colour: blackColors,
          ),
          SizedBox(
            height: 10.h,
          ),
          KText(
            text: "12/16/2022, 7:22:16 PM",
            width: widget.width,
            fs: widget.width * 0.011,
            colour: blackColors,
          ),
        ],
      ),
    );
  }
}
