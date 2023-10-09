import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/TermsAndConditionsForUploadingVideoScreen/TermsAndConditionsForUploadingVideoScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/VerifyIdCardScreen/VerifyIdCardScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/CameraOnResultScreen.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/IdentityCheckContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/PersonalDetailField.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/VerificationSuccesContainer.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/confirmPersonalAddressColumn.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/confirmPersonalDetailsColumn2.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/WelcomeToUserPortal/submitForFinalApprovalColumn.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/kbutton.dart';
import 'package:global_compliance/Views/AboutDesktop/InvitedForVarificationThroughtGmail/WelcomToUserportalScreen/VarifyPassportScreen/VarifyPassportScreen.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:video_player/video_player.dart';

bool faceVideoUploaded = false;

bool VideorecordingCompleted = false;

class WelcomeToUserPortalScreen extends StatefulWidget {
  WelcomeToUserPortalScreen({
    super.key,
    required this.valueindex,required this.whichScreen
  });
  int valueindex;
  int whichScreen;

  @override
  State<WelcomeToUserPortalScreen> createState() =>
      _WelcomeToUserPortalScreenState();
}

class _WelcomeToUserPortalScreenState extends State<WelcomeToUserPortalScreen> {
  // final _formkey = GlobalKey<FormState>();
  final dateOfBirthController = TextEditingController();
  final givenNameController = TextEditingController();
  final surNameController = TextEditingController();
  final CitizenshipController = TextEditingController();
  final IdExpiryController = TextEditingController();
  final adressController = TextEditingController();
  final cityController = TextEditingController();
  final postalCodeController = TextEditingController();
  final CountryOfResidenceController = TextEditingController();
  late VideoPlayerController _controller;
  bool ScreenNameToStartFrom = false;
  bool StartVideoScreen = false;
  bool documentScreen = false;
  int value = 0;
  bool cameraOn = false;

  late html.VideoElement _preview;
  late html.MediaRecorder _recorder;
  late html.VideoElement _result;
  bool personalDetailCompleted = false;
  // String CountrySelected = "Select";
//for Calender
  // CalendarFormat _calendarFormat = CalendarFormat.month;
  // DateTime _focusedDay = DateTime.now();
  // DateTime? _selectedDay;

  // String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Mr";

  List<String> _status = [
    "Mr",
    "Ms",
  ];
  String? _directoryPath;
  String? _extension;
  bool _isLoading = false;
  bool _userAborted = false;
  bool _multiPick = false;
  String? _fileName;
  String? _saveAsFileName;
  FileType _pickingType = FileType.video;
  List<PlatformFile>? _paths;
  var fileName = "";
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  String textFieldValue = "";
  bool confirmPersonalDetailsScreen2 = false;
  bool confirmPersonalAddress = false;
  bool verifyProvidedInformation = false;
  bool submitForFinalApproval = false;
  @override
  void initState() {
    super.initState();
    changeState();
    _controller = VideoPlayerController.asset('assets/videosfacevideo.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();

    _preview = html.VideoElement()
      ..autoplay = true
      ..muted = true
      ..width = html.window.innerWidth!
      ..height = html.window.innerHeight!;

    _result = html.VideoElement()
      ..autoplay = false
      ..muted = false
      ..width = html.window.innerWidth!
      ..height = html.window.innerHeight!
      ..controls = true;

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('preview', (int _) => _preview);

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('result', (int _) => _result);
  }

  void changeState() {
    setState(() {
      value = widget.valueindex;
      ScreenNameToStartFrom = ScreenNameToStartFrom;
    });
  }

  Future<html.MediaStream?> _openCamera() async {
    final html.MediaStream? stream = await html.window.navigator.mediaDevices
        ?.getUserMedia({'video': true, 'audio': true});
    _preview.srcObject = stream;
    return stream;
  }

  void startRecording(html.MediaStream stream) {
    _recorder = html.MediaRecorder(stream);
    _recorder.start();

    html.Blob blob = html.Blob([]);

    _recorder.addEventListener('dataavailable', (event) {
      blob = js.JsObject.fromBrowserObject(event)['data'];
    }, true);

    _recorder.addEventListener('stop', (event) {
      final url = html.Url.createObjectUrl(blob);
      _result.src = url;

      stream.getTracks().forEach((track) {
        if (track.readyState == 'live') {
          track.stop();
        }
      });
    });
  }

  void stopRecording() => _recorder.stop();

  setColor(int index) {
    print(index);
    if (index == 0) {
      setState(() {
        value = index;
      });
    } else if (index == 1) {
      setState(() {
        value = index;
      });
    } else if (index == 2) {
      setState(() {
        value = index;
      });
    } else {
      setState(() {
        value = 3;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _resetState() {
    if (!mounted) {
      return;
    }
    setState(() {
      _isLoading = true;
      _directoryPath = null;
      _fileName = null;
      _paths = null;
      _saveAsFileName = null;
      _userAborted = false;
    });
  }

  void _logException(String message) {
    print(message);
    _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    _scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _pickFiles() async {
    _resetState();
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        onFileLoading: (FilePickerStatus status) =>
            print("status  " + status.toString()),
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
      setState(() {
        fileName = _paths.toString();
      });

      print("fileName.......................fileName................  " +
          fileName.toString());
      print("_paths  " + _directoryPath.toString());
      // print("fileName  " + fileName.toString());
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    }
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
      _userAborted = _paths == null;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(":buildd");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(
                "assets/images/appLogoImage.PNG",
                scale: 5,
                color: blueAxent,
              ),
              // LogoTextAML(width: width),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == 0 ? blueAxent : lightGrey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 3.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        color: value == 0 ? blueAxent : lightGrey,
                        borderRadius: BorderRadius.circular(30.r)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == 1 ? blueAxent : lightGrey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 3.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        color: value == 1 ? blueAxent : lightGrey,
                        borderRadius: BorderRadius.circular(30.r)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == 2 ? blueAxent : lightGrey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 3.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        color: value == 2 ? blueAxent : lightGrey,
                        borderRadius: BorderRadius.circular(30.r)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == 3 ? blueAxent : lightGrey,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 3.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        color: value == 3 ? blueAxent : lightGrey,
                        borderRadius: BorderRadius.circular(30.r)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == 3 ? blueAxent : lightGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    KText(
                      text: 'Welcome',
                      width: width,
                      fs: width * 0.014,
                      colour: value == 0 ? blueAxent : lightGrey,
                    ),
                    KText(
                      text: "Identity Check",
                      width: width,
                      fs: width * 0.014,
                      colour: value == 1 ? blueAxent : lightGrey,
                    ),
                    KText(
                      text: 'Personal Details',
                      width: width,
                      fs: width * 0.014,
                      colour: value == 2 ? blueAxent : lightGrey,
                    ),
                    KText(
                      text: 'Success',
                      width: width,
                      fs: width * 0.014,
                      colour: value == 3 ? blueAxent : lightGrey,
                    ),
                  ],
                ),
              ),
              value == 0
                  ? VerificationPortalFirstScreen(context)
                  : value == 1
                      ? Column(
                          children: [
                            faceVideoUploaded == false
                                ? Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                        ),
                                        KText(
                                          text: "Record yourself",
                                          width: width,
                                          fw: FontWeight.w700,
                                          fs: width * 0.021,
                                          colour: blackColors,
                                        ),
                                        StartVideoScreen == false
                                            ? TermsAndConditionsForUploadingVideoScreen()
                                            : Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                  ),
                                                  KText(
                                                    text:
                                                        "Record a video of yourself using your device camera",
                                                    width: width,
                                                    fw: FontWeight.w700,
                                                    fs: width * 0.012,
                                                    h: 2,
                                                    wordSpacng: 1.w,
                                                    colour: blackColors,
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.06,
                                                  ),
                                                  cameraOn == false
                                                      ? Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height:
                                                                  height * 0.6,
                                                              width:
                                                                  width * 0.5,
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top: height *
                                                                    0.04,
                                                                left: width *
                                                                    0.02,
                                                              ),
                                                              decoration: BoxDecoration(
                                                                  color: lightGrey
                                                                      .withOpacity(
                                                                          0.3),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(5
                                                                              .r),
                                                                  border: Border.all(
                                                                      width:
                                                                          0.5.w,
                                                                      color: Colors
                                                                          .black)),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        margin: EdgeInsets.only(
                                                                            right:
                                                                                35.w),
                                                                        height:
                                                                            130.h,
                                                                        width:
                                                                            250.w,
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            AspectRatio(
                                                                          aspectRatio: _controller
                                                                              .value
                                                                              .aspectRatio,
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            children: <Widget>[
                                                                              VideoPlayer(_controller),

                                                                              //  _ControlsOverlay(controller: _controller),
                                                                              VideoProgressIndicator(_controller, allowScrubbing: true),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          KText(
                                                                            text:
                                                                                "1. Facing the device camera for a few seconds",
                                                                            width:
                                                                                width,
                                                                            fw: FontWeight.w300,
                                                                            wordSpacng:
                                                                                1.w,
                                                                            fs: width *
                                                                                0.012,
                                                                            h: 2.h,
                                                                            colour:
                                                                                blackColors,
                                                                          ),
                                                                          KText(
                                                                            text:
                                                                                "2. Then turn your head to the right and to the left",
                                                                            width:
                                                                                width,
                                                                            fw: FontWeight.w300,
                                                                            wordSpacng:
                                                                                1.w,
                                                                            fs: width *
                                                                                0.012,
                                                                            h: 2.h,
                                                                            colour:
                                                                                blackColors,
                                                                          ),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          15.h),
                                                                  Center(
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        final html.MediaStream?
                                                                            stream =
                                                                            await _openCamera();

                                                                        false;
                                                                        startRecording(
                                                                            stream!);

                                                                        setState(
                                                                            () {
                                                                          VideorecordingCompleted =
                                                                              true;
                                                                          cameraOn =
                                                                              true;
                                                                          // StartVideoScreen =
                                                                          // true;
                                                                        });
                                                                      },
                                                                      child: Container(
                                                                          height: 220.h,
                                                                          width: 220.w,
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                blackColors.withOpacity(0.1),
                                                                            border:
                                                                                Border.all(
                                                                              width: 0.3.w,
                                                                              style: BorderStyle.solid,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.r),
                                                                          ),
                                                                          child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              CircleAvatar(
                                                                                child: Icon(Icons.video_camera_back),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 20.h,
                                                                              ),
                                                                              KText(
                                                                                text: "Start video\nrecording",
                                                                                width: width,
                                                                                fw: FontWeight.w800,
                                                                                fs: width * 0.012,
                                                                                textAlign: TextAlign.center,
                                                                                h: 2.h,
                                                                                wordSpacng: 1.w,
                                                                                colour: blueAxent,
                                                                              ),
                                                                            ],
                                                                          )),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 15.h,
                                                            ),
                                                            UploadVideoButtonAndTextRow(
                                                                context),
                                                          ],
                                                        )
                                                      : cameraOn == true
                                                          ? CameraOnContainer(
                                                              context)
                                                          : CameraOnResultScreen(),
                                                ],
                                              ),
                                        SizedBox(height: 15.h),
                                      ],
                                    ),
                                  )
                                : IdentityCheckContainer(),
                            Value1Buttons(context),
                          ],
                        )
                      : value == 2
                          ? Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: EdgeInsets.only(top: 20.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  confirmPersonalDetailsScreen2
                                      ? confirmPersonalDetailsColumn2(
                                          width: width)
                                      : confirmPersonalAddress == true
                                          ? confirmPersonalAddressColumn(
                                              adressController:
                                                  adressController,
                                              cityController: cityController,
                                              postalCodeController:
                                                  postalCodeController,
                                              CountryOfResidenceController:
                                                  CountryOfResidenceController)
                                          : submitForFinalApproval == true
                                              ? submitForFinalApprovalColumn()
                                              : ConfirmyourpersonaldetailsColumn1(
                                                  context),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Value2Buttons(context),
                                ],
                              ),
                            )
                          : VerificationSuccesContainer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell UploadVideoButtonAndTextRow(BuildContext context) {
    return InkWell(
      splashColor: whiteColors,
      hoverColor: whiteColors,
      highlightColor: whiteColors,
      onTap: () {
        _pickFiles();
      },
      child: Row(
        // mainAxisAlignment:
        //     MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: whiteColors,
                border: Border.all(
                  width: 1.w,
                  color: blackColors.withOpacity(0.4),
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: blackColors),
                  Text(
                    "Upload Video",
                    style: TextStyle(fontSize: 20.sp, color: blueAxent),
                  ),
                ],
              )),
          SizedBox(
            width: 15.w,
          ),
          Text(
            "Supported formats: mp4, avi, mov, webm",
            style:
                TextStyle(fontSize: 20.sp, color: blackColors.withOpacity(.5)),
          )
        ],
      ),
    );
  }

// xx
  Row Value2Buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        kButton(
            onPressed: () {
              if (value == 2) {
                if (submitForFinalApproval == true) {
                  setState(() {
                    submitForFinalApproval = false;
                    confirmPersonalAddress = true;
                  });
                } else if (confirmPersonalAddress == true) {
                  setState(() {
                    confirmPersonalAddress = false;
                    confirmPersonalDetailsScreen2 = true;
                  });
                } else if (confirmPersonalDetailsScreen2 == true) {
                  setState(() {
                    confirmPersonalAddress = false;
                    confirmPersonalDetailsScreen2 = false;
                  });
                } else {
                  widget.whichScreen == 1
                      ? Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                VarifyPassportScreen(ShowPassportFront: true),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        )
                      : Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                VerifyIdCardScreen(ShowNicFront: true),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                }
              }
            },
            h: 50,
            w: 100,
            textSiz: 16,
            text: "Back",
            textColor: blackColors,
            colour: Colors.transparent),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        kButton(
            onPressed: () {
              if (value == 2) {
                if (textFieldValue.isEmpty || textFieldValue == "") {
                  SizedBox();
                } else if (confirmPersonalDetailsScreen2 == false &&
                    confirmPersonalAddress == false &&
                    submitForFinalApproval == false) {
                  setState(() {
                    confirmPersonalDetailsScreen2 = true;
                  });
                } else if (confirmPersonalAddress == false &&
                    confirmPersonalDetailsScreen2 == true) {
                  setState(() {
                    confirmPersonalDetailsScreen2 = false;
                    confirmPersonalAddress = true;
                  });
                } else if (submitForFinalApproval == false &&
                    confirmPersonalAddress == true) {
                  setState(() {
                    confirmPersonalAddress = false;
                    submitForFinalApproval = true;
                  });
                } else if (submitForFinalApproval == true) {
                  setState(() {
                    value = value + 1;
                  });
                }
              }
            },
            h: 55,
            w: MediaQuery.of(context).size.width / 1.9,
            textSiz: 17,
            text: value == 2
                ? submitForFinalApproval
                    ? "Submit for Final Approval"
                    : "Next Step"
                : "Next Step",
            textColor: Colors.white,
            colour: textFieldValue.isEmpty || textFieldValue == ""
                ? blueAxent.withOpacity(0.5)
                : blueAxent),
      ],
    );
  }

  Column ConfirmyourpersonaldetailsColumn1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Confirm your personal details',
          style: TextStyle(
              color: blackColors,
              fontSize: 35.sp,
              // letterSpacing: 5.w,
              wordSpacing: 1.w,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Personal Details',
                style: TextStyle(
                  color: blackColors,
                  fontSize: 20.sp,
                )),
            SizedBox(
              width: 10.w,
            ),
            Container(
              color: lightGrey,
              height: 1.h,
              width: 710.w,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'TITLE',
                      style: TextStyle(
                          color: lightGrey,
                          fontSize: 15.sp,
                          // letterSpacing: 5.w,
                          // wordSpacing: 1.w,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  RadioGroup<String>.builder(
                    // spacebetween: 20.w,
                    horizontalAlignment: MainAxisAlignment.start,
                    direction: Axis.horizontal,
                    groupValue: _verticalGroupValue,
                    textStyle:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
                    onChanged: (value) => setState(() {
                      _verticalGroupValue = value!;
                    }),
                    items: _status,
                    itemBuilder: (item) => RadioButtonBuilder(
                      item,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DATE OF BIRTH',
                    style: TextStyle(
                      color: lightGrey,
                      fontSize: 15.sp,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.250,
                    height: 55.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.transparent,
                        border: Border.all(
                          color: blackColors.withOpacity(0.5),
                          width: 0.2.w,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          style: BorderStyle.solid,
                        )),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextFormField(
                          onChanged: (Value) {
                            setState(() {
                              textFieldValue = value.toString();
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "Date of birth",
                              border: InputBorder.none,
                              fillColor: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        PersonalDetailField(
          firstheading: 'GIVEN NAME',
          firstHint: 'Given name',
          firstController: givenNameController,
          SecondHeading: 'SURNAME',
          secondHint: 'Your surname',
          secondController: surNameController,
        ),
        SizedBox(
          height: 35.h,
        ),
        PersonalDetailField(
          firstController: CitizenshipController,
          firstheading: 'CITIZENSHIP',
          firstHint: 'Your citizenship',
          SecondHeading: 'IDENTITY DOCUMENT EXPIRATION DATE',
          secondHint: 'dd//mm//yyyy',
          secondController: IdExpiryController,
        ),
      ],
    );
  }

  Widget Value1Buttons(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          kButton(
              onPressed: () {
                if (value == 1) {
                  if (faceVideoUploaded == true) {
                    setState(() {
                      faceVideoUploaded = false;
                      StartVideoScreen = true;
                    });
                  } else if (cameraOn == true) {
                    setState(() {
                      StartVideoScreen = true;
                      cameraOn = false;
                    });
                    stopRecording();
                  } else if (StartVideoScreen == false &&
                      faceVideoUploaded == false) {
                    setState(() {
                      value = value - 1;
                      StartVideoScreen = true;
                      cameraOn = true;
                    });
                    stopRecording();
                  } else if (StartVideoScreen == true) {
                    setState(() {
                      // cameraOn = true;
                      StartVideoScreen = false;
                      faceVideoUploaded = false;
                    });
                    stopRecording();
                  }
                }
              },
              h: 50,
              w: 100,
              textSiz: 16,
              text: "Back",
              textColor: Colors.black,
              colour: Colors.transparent),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          faceVideoUploaded == false
              ? kButton(
                  onPressed: () {
                    if (value == 1) {
                      if (StartVideoScreen == false) {
                        setState(() {
                          StartVideoScreen = true;
                          cameraOn = false;
                        });
                      } else if (StartVideoScreen == true &&
                          faceVideoUploaded == false) {
                        setState(() {
                          StartVideoScreen = false;
                          faceVideoUploaded = true;
                          // cameraOn = false;
                        });
                        stopRecording();
                      }
                    }
                  },
                  h: 55,
                  w: 300,
                  textSiz: width * 0.015,
                  text: "Next Step",
                  textColor: Colors.white,
                  colour: blueAxent)
              : SizedBox(),
        ],
      ),
    );
  }

  Column CameraOnContainer(BuildContext context) {
    return Column(
      children: [
        VideorecordingCompleted == true
            ? Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Colors.transparent,
                child: HtmlElementView(
                  key: UniqueKey(),
                  viewType: 'result',
                ),
              )
            : Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Colors.transparent,
                child: HtmlElementView(
                  key: UniqueKey(),
                  viewType: 'preview',
                ),
              ),
        kButton(
            onPressed: () {
              setState(() {
                VideorecordingCompleted = true;
              });
              stopRecording();
            },
            h: 55,
            w: 150,
            textSiz: 15,
            text: "Stop Recording",
            textColor: blueAxent,
            colour: whiteColors)
      ],
    );
  }

  Container VerificationPortalFirstScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  KText(
                    text: "Welcome to our User Verification\nPortal",
                    width: width,
                    fw: FontWeight.w700,
                    fs: width * 0.020,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  KText(
                    text:
                        "Before starting the verification process please make sure:",
                    width: width,
                    fw: FontWeight.w200,
                    fs: width * 0.014,
                    wordSpacng: 1,
                    colour: blackColors,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/tick.png",
                        scale: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      KText(
                        text: "Your device camera is working properly",
                        width: width,
                        fw: FontWeight.w200,
                        fs: width * 0.012,
                        wordSpacng: 1,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      Tooltip(
                        message: "Please make\nsure the room\nas well-lit",
                        child: Icon(
                          Icons.warning_amber_rounded,
                          color: lightGrey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/tick.png",
                        scale: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      KText(
                        text: "You have a valid Identity Document with you",
                        width: width,
                        fw: FontWeight.w200,
                        fs: width * 0.012,
                        wordSpacng: 1,
                        colour: blackColors,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/tick.png",
                        scale: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      KText(
                        text: "You have a valid proof of address\ndocument",
                        width: width,
                        fw: FontWeight.w200,
                        fs: width * 0.012,
                        wordSpacng: 1,
                        colour: blackColors,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      Tooltip(
                        textStyle:
                            TextStyle(fontSize: 15.sp, color: Colors.white),
                        message:
                            "Utility bill,bank/credit card statement or any\nother document "
                            "from local authorities issued no\nearlier than 3 months ago.",
                        child: Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Image.asset(
                "assets/images/IllustrationDone.png",
                scale: 5,
              )
            ],
          ),
          SizedBox(height: 45.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kButton(
                  onPressed: () {
                    if (value > 0) {
                      setState(() {
                        value = (value - 1) % 4;
                        // StartVideoScreen = false;
                        // stopRecording();
                      });
                    } else {
                      value = 0;
                    }
                  },
                  h: 50,
                  w: 100,
                  textSiz: 16,
                  text: "Back",
                  textColor: Colors.black,
                  colour: Colors.transparent),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              kButton(
                  onPressed: () {
                    // child: new Text("Scroll to data"),
                    setState(() {
                      if (value != 1) {
                        faceVideoUploaded = false;
                        StartVideoScreen = false;
                        if (value < 3) {
                          value = (value + 1) % 4;
                        } else {
                          value = 3;
                        }
                      } else if (value == 1) {
                        if (StartVideoScreen == true &&
                            documentScreen == true) {
                          value = value + 1;
                        }
                        StartVideoScreen = true;
                      }
                    });
                  },
                  h: 55,
                  w: 240,
                  textSiz: width * 0.015,
                  text: "Start Varification",
                  textColor: Colors.white,
                  colour: blueAxent),
            ],
          ),
        ],
      ),
    );
  }
}
