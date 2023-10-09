import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoContainer.dart';
import 'package:global_compliance/res/Colors/Colours.dart';

class AutoRejectSettingsContainer extends StatefulWidget {
  const AutoRejectSettingsContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AutoRejectSettingsContainer> createState() =>
      _AutoRejectSettingsContainerState();
}

class _AutoRejectSettingsContainerState
    extends State<AutoRejectSettingsContainer> {
  List<String>? selectedDataString;

  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }

  dynamic selectedPercentage = "";
  List<String> dataString = [
    "Auto",
    "Manual Preview",
  ];
  String? selectedString = "Auto";
  @override
  Widget build(BuildContext context) {
    return AutoContainer(
      containerHeading: "Auto Reject Settings",
      FirstFieldHeading: "AML / OFAC / PEP Matches",
      secondFieldHeading: "AML / OFAC / PEP Uncertainty Handling",
      thirdFieldHeading: "ID Document Months Before Expiry",
      fourthFieldHeading: "",
      fourthFieldVisible: false,
      textInputFieldVisible: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
            // child: CustomMultiSelectField<String>(
            //   width: MediaQuery.of(context).size.width / 2.2,
            //   title: "Select",
            //   items: ListAMLOFACPEPMatches,
            //   selectedItemColor: blueAxent,
            //   onSelectionDone: _onCountriesSelectionComplete,
            //   itemAsString: (item) => item.toString(),
            // ),
          ),
          // Consumer<CountryDropDownProvider>(builder: (context, value, child) {
          //   return kCountryDropdown(
          //     backgroundColor: whiteColors,
          //     w: MediaQuery.of(context).size.width / 2.2,
          //     h: 42,
          //     list: country_list,
          //     selectedValue: value.AutoAcceptMediumRiskCountry,
          //     dropDownTag: "AutoAcceptMediumRiskCountry",
          //     iconAndTextColor: blackColors,
          //   );
          // }),
          Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width / 2.2,
            child: CustomSingleSelectField<String>(
              items: dataString,
              title: "",
              // decoration: InputDecoration(
              //     labelStyle: TextStyle(
              //   color: Colors.black,
              // )),
              initialValue: "Auto",
              onSelectionDone: (value) {
                selectedString = value;
                setState(() {});
              },
              itemAsString: (item) => item,
            ),
          )
        ],
      ),
      colour: whiteColors,
    );
  }
}
