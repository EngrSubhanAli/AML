import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Providers/CountryDropDownProvider.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:provider/provider.dart';

class kCountryDropdown extends StatefulWidget {
  kCountryDropdown(
      {this.w,
      required this.h,
      this.list,
      this.selectedValue,
      required this.backgroundColor,
      required this.iconAndTextColor,
      required this.dropDownTag});
  double? w, h;
  List<dynamic>? list;
  String? selectedValue, defaultselectedValue;
  Color backgroundColor, iconAndTextColor;
  String dropDownTag;
  @override
  State<kCountryDropdown> createState() => _DropDownWithBorderState();
}

class _DropDownWithBorderState extends State<kCountryDropdown> {
  // String defaultselectedValue = "";
  @override
  Widget build(BuildContext context) {
    // final countryDropDownProvider =
    //     Provider.of<CountryDropDownProvider>(context, listen: true);
    return Consumer<CountryDropDownProvider>(
      builder: (context, value, child) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Text(
              widget.dropDownTag == "BlockCountry"
                  ? value.BlockCountry
                  : widget.dropDownTag == "BlockNationalities"
                      ? value.BlockNationalities
                      : widget.dropDownTag == "BlockIDCardCountry"
                          ? value.BlockIDCardCountry
                          : widget.dropDownTag == "BlockDrivingLicenceCountry"
                              ? value.BlockDrivingLicenceCountry
                              : widget.dropDownTag ==
                                      "AutoAcceptHighRiskCountry"
                                  ? value.AutoAcceptHighRiskCountry
                                  : widget.dropDownTag ==
                                          "AutoAcceptHighRiskNationalities"
                                      ? value.AutoAcceptHighRiskNationalities
                                      : widget.dropDownTag ==
                                              "AutoAcceptMediumRiskCountry"
                                          ? value.AutoAcceptMediumRiskCountry
                                          : widget.dropDownTag ==
                                                  "AutoAcceptMediumRiskNationalities"
                                              ? value
                                                  .AutoAcceptMediumRiskNationalities
                                              : value.CountrySelected,

              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.w,
                color: widget.iconAndTextColor,
              ),
              // overflow: TextOverflow.ellipsis,
            ),
            items: widget.list!
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      enabled: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                              color: widget.iconAndTextColor,
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    ))
                .toList(),
            onChanged: (value1) {
              widget.dropDownTag == "BlockCountry"
                  ? value.setBlockCountry(value1!)
                  : widget.dropDownTag == "BlockNationalities"
                      ? value.setBlockNationalities(value1!)
                      : widget.dropDownTag == "BlockIDCardCountry"
                          ? value.setBlockIDCardCountry(value1!)
                          : widget.dropDownTag == "BlockDrivingLicenceCountry"
                              ? value.setBlockDrivingLicenceCountry(value1!)
                              : widget.dropDownTag ==
                                      "AutoAcceptHighRiskCountry"
                                  ? value.setAutoAcceptHighRiskCountry(value1!)
                                  : widget.dropDownTag ==
                                          "AutoAcceptHighRiskNationalities"
                                      ? value
                                          .setAutoAcceptHighRiskNationalities(
                                              value1!)
                                      : widget.dropDownTag ==
                                              "AutoAcceptMediumRiskCountry"
                                          ? value
                                              .setAutoAcceptMediumRiskCountry(
                                                  value1!)
                                          : widget.dropDownTag ==
                                                  "AutoAcceptMediumRiskNationalities"
                                              ? value
                                                  .setAutoAcceptMediumRiskNationalities(
                                                      value1!)
                                              : value.setValue(value1!);

              print(widget.selectedValue!);
            },
            icon: Icon(
              Icons.arrow_drop_down_rounded,
              color: widget.iconAndTextColor,
              size: 25.sp,
            ),
            iconSize: 16.sp,
            iconEnabledColor: blackColors,
            iconDisabledColor: blackColors,
            buttonHeight: widget.h!.h,
            buttonWidth: widget.w ?? 300.w,
            buttonPadding: EdgeInsets.only(left: 14.w, right: 14.w),
            buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.r),
                border: Border.all(
                  width: 0.5.w,
                  color: blueAxent,
                ),
                color: widget.backgroundColor),
            buttonElevation: 0,
            itemHeight: 45.h,
            itemPadding: EdgeInsets.only(
              left: 14.w,
              right: 14.w,
            ),
            dropdownMaxHeight: 500.h,
            dropdownWidth: MediaQuery.of(context).size.width / 5,
            dropdownPadding: EdgeInsets.all(15.r),
            dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.r),
                color: whiteColors,
                border: Border.all(
                    width: 0.5, color: blackColors.withOpacity(0.5))),
            dropdownElevation: 18,
            scrollbarRadius: Radius.circular(10.r),
            scrollbarThickness: 6.w,
            scrollbarAlwaysShow: true,
          ),
        );
      },
    );
  }
}
