import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/GlobalLists/GlobalLists.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoAcceptHighRiskSettingContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoAcceptLowRiskSettingContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoAcceptMediumRiskSettingsContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/AutoRejectSettingsContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/DefaultScreeningCostContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/DefaultScreeningSettingContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/GlobalComplaincePortal/CompaniesScreen/SettingScreen/HeadingTestCompanySettingsRow.dart';
import 'package:global_compliance/res/AppBarRow.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kTextField.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/view_Models/Models.dart';
import 'package:hovering/hovering.dart';
import '../../../../../res/RadioButtonWidget.dart';
import 'WidgetSettingsHeadingRow.dart';

bool Switch1 = false;
bool Switch2 = false;
bool Switch3 = false;
bool Switch4 = false;
bool Switch5 = false;

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key, required this.companyName});
  String companyName;
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<String>? selectedDataString;

  void _onCountriesSelectionComplete(value) {
    selectedDataString?.addAll(value);
    setState(() {});
  }

  // int defaultScreeningCostValue = 0;
  TextEditingController WebhookEditingController = TextEditingController();
  WebHookManagmentModel webHookManagmentModel = WebHookManagmentModel();
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  String selectedValue = "Select";

  String enteredURL = "";
  String secret = "********";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("built");
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColors,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 37.w,
              right: 45.w,
              top: 23.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ************************************************************************************************
                // TaskBar Row
                AppBarRow(),
                // ************************************************************************************************
                SizedBox(
                  height: 55.h,
                ),
                HeadingTestCompanySettingsRow(
                    width: width, CompanyName: widget.companyName),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ************************************************************************************************
                    // Default Screening Settings
                    DefaultScreeningSettingContainer(
                        width: width,
                        Switch1: Switch1,
                        Switch2: Switch2,
                        Switch3: Switch3,
                        Switch4: Switch4,
                        Switch5: Switch5),
                    // ************************************************************************************************
                    // DefaultScreeningCostContainer
                    DefaultScreeningCostContainer(
                      width: width,
                      // defaultScreeningCostValue: defaultScreeningCostValue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),

                // **************************************** ******************************************************************************
                //^ Widget Settings Container Not Extracted
                // WidgetSettingsContainer(width: width, Switch1: Switch1),
                Container(
                  // height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15.h, left: 25.w, right: 25.w),
                  decoration: BoxDecoration(
                      color: whiteColors,
                      boxShadow: [
                        BoxShadow(
                          color: lightGrey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        )
                      ],
                      border: Border.all(
                          width: 1.w, color: lightGrey.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(
                        text: "Widget Settings",
                        width: width,
                        fs: width * 0.013,
                        ltrSpacing: 1.w,
                        fw: FontWeight.w600,
                        colour: blackColors,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      WidgetSettingsHeadingRow(
                        width: width,
                        heading1: "Countries Blacklist",
                        heading2: "Nationalities Blacklist",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: width / 2.2,
                            height: height * 0.050,
                            child: CustomMultiSelectField<String>(
                              width: MediaQuery.of(context).size.width / 2.2,
                              title: "Select",
                              items: country_list,
                              selectedItemColor: blueAxent,
                              onSelectionDone: _onCountriesSelectionComplete,
                              itemAsString: (item) => item.toString(),
                            ),
                          ),
                          // Consumer<CountryDropDownProvider>(
                          //   builder: (context, value, child) {
                          //     return kCountryDropdown(
                          //       backgroundColor: whiteColors,
                          //       w: MediaQuery.of(context).size.width / 2.2,
                          //       h: 42,
                          //       list: country_list,
                          //       dropDownTag: "BlockCountry",
                          //       selectedValue: value.BlockCountry,
                          //       iconAndTextColor: blackColors,
                          //     );
                          //   },
                          // ),
                          Container(
                            height: height * 0.050,
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
                          ),
                          // Consumer<CountryDropDownProvider>(
                          //     builder: (context, value, child) {
                          //   return kCountryDropdown(
                          //     backgroundColor: whiteColors,
                          //     w: MediaQuery.of(context).size.width / 2.2,
                          //     h: 42,
                          //     list: country_list,
                          //     selectedValue: value.BlockNationalities,
                          //     dropDownTag: "BlockNationalities",
                          //     iconAndTextColor: blackColors,
                          //   );
                          // }),
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
                        width: width,
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
                          KTextFieldwithShadow(
                            hintText: '18',
                            borderRadius: 30.r,
                            w: 790.w,
                          ),
                          // kCountryDropdown(
                          //   backgroundColor: whiteColors,
                          //   w: MediaQuery.of(context).size.width / 2.2,
                          //   h: 42,
                          //   list: country_list,
                          //   selectedValue: "Select",
                          //   dropDownTag: "value.BlockNationalities",
                          //   iconAndTextColor: blackColors,
                          // ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          RadioButtonWidget(
                            SwitchValue: Switch1,
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
                        width: width,
                        heading1: "Id Card Countries Blacklist",
                        heading2: "Driving License Countries Whitelist",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Consumer<CountryDropDownProvider>(
                          //     builder: (context, value, child) {
                          //   return kCountryDropdown(
                          //     backgroundColor: whiteColors,
                          //     w: MediaQuery.of(context).size.width / 2.2,
                          //     h: 42,
                          //     list: country_list,
                          //     dropDownTag: "BlockIDCardCountry",
                          //     selectedValue: value.BlockIDCardCountry,
                          //     iconAndTextColor: blackColors,
                          //   );
                          // }),
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
                          ),
                          // Consumer<CountryDropDownProvider>(
                          //     builder: (context, value, child) {
                          //   return kCountryDropdown(
                          //     backgroundColor: whiteColors,
                          //     w: MediaQuery.of(context).size.width / 2.2,
                          //     h: 42,
                          //     list: country_list,
                          //     selectedValue: value.BlockDrivingLicenceCountry,
                          //     dropDownTag: "BlockDrivingLicenceCountry",
                          //     iconAndTextColor: blackColors,
                          //   );
                          // }),
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
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),

                // ************************************************************************************************
                // ^Auto Reject Settings
                AutoRejectSettingsContainer(),

                // ************************************************************************************************
                //^ Auto Accept: High Risk Settings
                AutoAcceptHighRiskSettingContainer(),

                // ************************************************************************************************
                //^ Auto Accept: Medium Risk Settings
                AutoAcceptMediumRiskSettingsContainer(),

                // ************************************************************************************************
                //^Auto Accept: Low Risk Settings

                AutoAcceptLowRiskSettingContainer(width: width),

// **************************************************************************************
                //^Credential Managment Container
                CredentialManagmentContainer(context, width),

                //^WebHook Managment Container
                WebHookManagmentContainer(context, width),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: height / 8,
                  width: width,
                  decoration: BoxDecoration(
                    color: lightGrey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  padding: EdgeInsets.only(
                    left: 20.w,
                  ),
                  child: Row(
                    children: [
                      KText(
                        text: "Audit Log",
                        width: width,
                        fs: width * 0.013,
                        fw: FontWeight.w500,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      KText(
                        text: " (0 entries)",
                        width: width,
                        fs: width * 0.011,
                        fw: FontWeight.w300,
                        colour: blackColors,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container WebHookManagmentContainer(BuildContext context, double width) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      padding:
          EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w, bottom: 10.h),
      margin: EdgeInsets.only(
        top: 20.h,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            )
          ],
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(
                text: "WebHook Managment",
                width: width,
                fw: FontWeight.bold,
                fs: width * 0.012,
                ltrSpacing: 1.w,
                colour: blackColors,
              ),
              kButton(
                onPressed: () {
                  alert(
                    context,
                    title: Container(
                        height: MediaQuery.of(context).size.height / 14,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "WebHooks",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.cancel,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )),
                    content: Container(
                      color: whiteColors,
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter WebHook Url"),
                          SizedBox(
                            height: 15.h,
                          ),
                          KTextFieldwithShadow(
                            hintText: 'URL',
                            w: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ],
                      ),
                    ),
                    textOK: Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: whiteColors,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              kButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                h: 42,
                                w: 90,
                                textSiz: 14.sp,
                                text: "Close",
                                textColor: whiteColors,
                                colour: lightGrey,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              kButton(
                                onPressed: () {
                                  setState(() {
                                    WebHookManagmentList.add(
                                        WebHookManagmentModel(
                                      WebHookUrl: WebhookEditingController.text,
                                      WebHookSecret: secret,
                                      btnText: "Remove",
                                    ));
                                  });

                                  Navigator.pop(context);
                                },
                                h: 42,
                                w: 90,
                                textSiz: 16.sp,
                                text: "Create",
                                textColor: whiteColors,
                                colour: blueAxent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                h: 45,
                w: 120,
                textSiz: 16.sp,
                text: "Add New",
                textColor: Colors.white,
                colour: blueAxent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: KText(
                  text: "WebHook Url",
                  width: width,
                  fw: FontWeight.bold,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  colour: blackColors,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: KText(
                  text: "WebHook Secret",
                  width: width,
                  fw: FontWeight.bold,
                  fs: width * 0.011,
                  ltrSpacing: 1.w,
                  colour: blackColors,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: WebHookManagmentList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: KText(
                            text: WebHookManagmentList[index]
                                .WebHookUrl
                                .toString(),
                            width: width,
                            fw: FontWeight.bold,
                            fs: width * 0.011,
                            ltrSpacing: 1.w,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            WebHookManagmentList[index]
                                .WebHookSecret
                                .toString(),
                            style: TextStyle(
                                fontSize: 20.sp,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1.w),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              WebHookManagmentList.removeAt(index);
                            });
                          },
                          child: HoverWidget(
                            hoverChild: Container(
                              height: 37.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border:
                                    Border.all(width: 0.5.w, color: Colors.red),
                              ),
                              child: Center(
                                child: Text(
                                  WebHookManagmentList[index]
                                      .btnText
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp),
                                ),
                              ),
                            ),
                            onHover: (event) {
                              // _key.currentState.showSnackBar(SnackBar(
                              //   content: Text('Yaay! I am Hovered'),
                              // ));
                            },
                            child: Container(
                              height: 37.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5.w, color: Colors.red)),
                              child: Center(
                                child: Text(
                                  WebHookManagmentList[index]
                                      .btnText
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 16.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }

  Container CredentialManagmentContainer(BuildContext context, double width) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      padding:
          EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w, bottom: 10.h),
      margin: EdgeInsets.only(
        top: 20.h,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.w, color: Colors.grey.withOpacity(0.3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(
                text: "Credential Managment",
                width: width,
                fs: width * 0.012,
                fw: FontWeight.bold,
                colour: blackColors,
              ),
              kButton(
                onPressed: (() {
                  alert(
                    context,
                    title: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Credential',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.cancel,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              'Disclaimer',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'You will not be able to see secret again. Please write down and keep it safe.',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Container(
                              padding: EdgeInsets.all(10.r),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 216, 208, 208)
                                      .withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '{',
                                      style: TextStyle(
                                          fontSize: 20.sp, color: Colors.black),
                                    ),
                                  ),
                                  Text(
                                    "clientId : ddb6e854-a7bc-45f9-84bd-07a7219d5ddc",
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.black),
                                  ),
                                  Text(
                                    "secret : v6jYwtA8k294u4RPg1Y3",
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.black),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '}',
                                      style: TextStyle(
                                          fontSize: 20.sp, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    textOK: Column(
                      children: [
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            kButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              h: 42,
                              w: 90,
                              textSiz: 14.sp,
                              text: "Close",
                              textColor: Colors.white,
                              colour: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
                h: 45,
                w: 120,
                textSiz: 17.sp,
                text: "Create New",
                textColor: Colors.white,
                colour: blueAxent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: KText(
                  text: "Client Id",
                  width: width,
                  fs: width * 0.011,
                  fw: FontWeight.bold,
                  colour: blackColors,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: KText(
                  text: "Secret",
                  width: width,
                  fs: width * 0.011,
                  fw: FontWeight.bold,
                  colour: blackColors,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: CredentiaManagmentList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: KText(
                            text: CredentiaManagmentList[index]
                                .clientId
                                .toString(),
                            width: width,
                            fs: width * 0.011,
                            colour: blackColors,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: KText(
                            text:
                                CredentiaManagmentList[index].secret.toString(),
                            width: width,
                            fs: width * 0.011,
                            colour: blackColors,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              CredentiaManagmentList.removeAt(index);
                            });
                          },
                          child: HoverWidget(
                            hoverChild: Container(
                              height: 37.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border:
                                    Border.all(width: 0.5.w, color: Colors.red),
                              ),
                              child: Center(
                                child: Text(
                                  CredentiaManagmentList[index]
                                      .btnText
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17.sp),
                                ),
                              ),
                            ),
                            onHover: (event) {},
                            child: Container(
                              height: 37.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5.w, color: Colors.red)),
                              child: Center(
                                child: Text(
                                  CredentiaManagmentList[index]
                                      .btnText
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 17.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
