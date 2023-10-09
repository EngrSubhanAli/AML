import 'package:flutter/material.dart';
import 'package:global_compliance/ResponsiveClass.dart';
import 'package:global_compliance/Views/AboutDesktop/AboutDesktop.dart';
import 'package:global_compliance/Views/AboutMobile/AboutMobile.dart';

// var height = Get.width();
//   bool isMobile = height < 650;
class AboutMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    // Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: AboutMobile(),
        tablet: AboutMobile(),
        desktop: AboutDesktop(),
      ),
    );
  }
}
