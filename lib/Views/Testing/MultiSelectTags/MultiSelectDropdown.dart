import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class MultiSelectCountryDropdown extends StatefulWidget {
  MultiSelectCountryDropdown();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MultiSelectCountryDropdown> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MultiSelectCountryDropdown> {
  List<String> dataString = [
    "Pakistan",
    "Saudi Arabia",
    "UAE",
    "USA",
    "Turkey",
    "Brazil",
    "Tunisia",
    'Canada'
  ];
  String? selectedString;
  List<String>? selectedDataString;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSingleSelectField<String>(
              items: dataString,
              title: "Country",
              onSelectionDone: (value) {
                selectedString = value;
                setState(() {});
              },
              itemAsString: (item) => item,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 70.h,
              width: 400.w,
              child: CustomMultiSelectField<String>(
                width: 180.w,
                title: "Select",
                items: country_list,
                onSelectionDone: _onCountriesSelectionComplete,
                itemAsString: (item) => item.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }
}
