import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/CountryDropDownProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/kCountryDropDown1.dart';
import 'package:provider/provider.dart';

class AutoAcceptMediumRiskSettingsContainer extends StatefulWidget {
  const AutoAcceptMediumRiskSettingsContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<AutoAcceptMediumRiskSettingsContainer> createState() =>
      _AutoAcceptMediumRiskSettingsContainerState();
}

class _AutoAcceptMediumRiskSettingsContainerState
    extends State<AutoAcceptMediumRiskSettingsContainer> {
  List<String>? selectedDataString;

  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AutoContainer(
      containerHeading: "Auto Accept: Medium Risk Settings",
      FirstFieldHeading: "Countries",
      secondFieldHeading: "Nationalities",
      thirdFieldHeading: "AML / OFAC / PEP Matches",
      fourthFieldHeading: "AML / OFAC / PEP Uncertainty Handling",
      fourthFieldVisible: true,
      colour: Colors.white,
      textInputFieldVisible: false,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width / 2.2,
            child: CustomMultiSelectField<String>(
              width: MediaQuery.of(context).size.width / 2.2,
              title: "Select",
              items: country_list,
              selectedItemColor: blueAxent,
              onSelectionDone: _onCountriesSelectionComplete,
              itemAsString: (item) => item.toString(),
            ),
          )
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
          // Consumer<CountryDropDownProvider>(builder: (context, value, child) {
          //   return kCountryDropdown(
          //     backgroundColor: whiteColors,
          //     w: MediaQuery.of(context).size.width / 2.2,
          //     h: 42,
          //     list: country_list,
          //     selectedValue: value.AutoAcceptMediumRiskNationalities,
          //     dropDownTag: "AutoAcceptMediumRiskNationalities",
          //     iconAndTextColor: blackColors,
          //   );
          // }),
          ,
          Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width / 2.2,
            child: CustomMultiSelectField<String>(
              width: MediaQuery.of(context).size.width / 2.2,
              title: "Select",
              items: country_list,
              selectedItemColor: blueAxent,
              onSelectionDone: _onCountriesSelectionComplete,
              itemAsString: (item) => item.toString(),
            ),
          )
        ],
      ),
    );
  }
}
