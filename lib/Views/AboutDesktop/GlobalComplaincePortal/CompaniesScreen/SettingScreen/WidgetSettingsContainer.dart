import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Providers/CountryDropDownProvider.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/SettingScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/WidgetSettingsHeadingRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/RadioButtonWidget.dart';
import 'package:global_compliance/res/kCountryDropDown1.dart';
import 'package:provider/provider.dart';

class WidgetSettingsContainer extends StatefulWidget {
  const WidgetSettingsContainer({
    Key? key,
    required this.width,
    required this.Switch1,
  }) : super(key: key);

  final double width;
  final bool Switch1;

  @override
  State<WidgetSettingsContainer> createState() =>
      _WidgetSettingsContainerState();
}

class _WidgetSettingsContainerState extends State<WidgetSettingsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 2), // changes position of shadow
            )
          ],
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: "Widget Settings",
            width: widget.width,
            fs: widget.width * 0.013,
            ltrSpacing: 1.w,
            fw: FontWeight.w600,
            colour: blackColors,
          ),
          SizedBox(
            height: 15.h,
          ),
          WidgetSettingsHeadingRow(
            width: widget.width,
            heading1: "Countries Blacklist",
            heading2: "Nationalities Blacklist",
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<CountryDropDownProvider>(
                  builder: (context, value, child) {
                return kCountryDropdown(
                  backgroundColor: Colors.white,
                  w: MediaQuery.of(context).size.width / 2.2,
                  h: 42,
                  list: country_list,
                  dropDownTag: "BlockCountry",
                  selectedValue: value.BlockCountry.toString(),
                  iconAndTextColor: Colors.black,
                );
              }),
              Consumer<CountryDropDownProvider>(
                  builder: (context, value, child) {
                return kCountryDropdown(
                  backgroundColor: Colors.white,
                  w: MediaQuery.of(context).size.width / 2.2,
                  h: 42,
                  list: country_list,
                  selectedValue: value.BlockNationalities,
                  dropDownTag: "BlockNationalities",
                  iconAndTextColor: Colors.black,
                );
              }),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(),
          SizedBox(
            height: 15.h,
          ),
          WidgetSettingsHeadingRow(
            width: widget.width,
            heading1: "Minimal Age in Years",
            heading2: "Allow Video Upload for Biometric Analysis",
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kCountryDropdown(
                backgroundColor: Colors.white,
                w: MediaQuery.of(context).size.width / 2.2,
                h: 42,
                list: country_list,
                selectedValue: "Select",
                dropDownTag: "value.BlockNationalities",
                iconAndTextColor: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              RadioButtonWidget(
                SwitchValue: widget.Switch1,
                switchNo: 0,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(),
          SizedBox(
            height: 15.h,
          ),
          WidgetSettingsHeadingRow(
            width: widget.width,
            heading1: "Id Card Countries Blacklist",
            heading2: "Driving License Countries Whitelist",
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<CountryDropDownProvider>(
                  builder: (context, value, child) {
                return kCountryDropdown(
                  backgroundColor: whiteColors,
                  w: MediaQuery.of(context).size.width / 2.2,
                  h: 42,
                  list: country_list,
                  dropDownTag: "BlockIDCardCountry",
                  selectedValue: value.BlockIDCardCountry,
                  iconAndTextColor: blackColors,
                );
              }),
              Consumer<CountryDropDownProvider>(
                  builder: (context, value, child) {
                return kCountryDropdown(
                  backgroundColor: whiteColors,
                  w: MediaQuery.of(context).size.width / 2.2,
                  h: 42,
                  list: country_list,
                  selectedValue: value.BlockDrivingLicenceCountry,
                  dropDownTag: "BlockDrivingLicenceCountry",
                  iconAndTextColor: blackColors,
                );
              }),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
