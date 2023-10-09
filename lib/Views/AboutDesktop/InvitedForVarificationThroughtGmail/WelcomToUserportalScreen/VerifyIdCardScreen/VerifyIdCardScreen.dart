import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/res/Colors/Colours.dart';
import 'package:global_compliance/res/KText.dart';
import 'package:global_compliance/res/LogoTextAml.dart';
import 'package:global_compliance/res/kbutton.dart';
import '../WelcomeToUserPortal/WelcomeToUserPortalScreen.dart';

Uint8List? nicFrontUploaded;

XFile? nicImageByCamera;

class VerifyIdCardScreen extends StatefulWidget {
  VerifyIdCardScreen({super.key, required this.ShowNicFront});
  bool ShowNicFront;
  @override
  State<VerifyIdCardScreen> createState() => _VerifyIdCardScreenState();
}

class _VerifyIdCardScreenState extends State<VerifyIdCardScreen> {
  bool frontIdCard = false;
  bool documentScreen = false;
  bool imageGetNotNull = false;

  int value = 1;
  late CameraController controller;

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  String? _directoryPath;
  String? _extension;
  bool _isLoading = false;
  bool _userAborted = false;
  bool _multiPick = false;
  String? _fileName;
  String? _saveAsFileName;
  FileType _pickingType = FileType.image;
  List<PlatformFile>? _paths;
  var fileName = "";
  // Uint8List? selectedImageInBytes;

  @override
  void initState() {
    super.initState();
    setState(() {
      imageGetNotNull = widget.ShowNicFront;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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

  _selectFile(bool imageFrom) async {
    FilePickerResult? fileResult =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (fileResult != null) {
      // selctFile = fileResult.files.first.name;

      setState(() {
        nicFrontUploaded = fileResult.files.first.bytes!;
      });
      print(".........................................................." +
          nicFrontUploaded.toString());
      // }
      // );
    }
  }

  bool intilize = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteColors,
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
                    Text("Welcome",
                        style: TextStyle(
                          color: value == 0 ? blueAxent : lightGrey,
                          fontSize: width * 0.014,
                        )),
                    Text("Identity Check",
                        style: TextStyle(
                          color: value == 1 ? blueAxent : lightGrey,
                          fontSize: width * 0.014,
                        )),
                    Text(
                      'Personal Details',
                      style: TextStyle(
                        color: value == 3 ? blueAxent : lightGrey,
                        fontSize: width * 0.014,
                      ),
                    ),
                    Text('Success',
                        style: TextStyle(
                          color: value == 4 ? blueAxent : lightGrey,
                          fontSize: width * 0.014,
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Front of your Cnic",
                      style: TextStyle(
                          color: blackColors,
                          fontSize: 35.sp,
                          // letterSpacing: 5.w,
                          wordSpacing: 1.w,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    KText(
                      text:
                          "Please do not cover any information with your fingers",
                      width: width,
                      fs: width * 0.012,
                      colour: blackColors,
                      h: 2.h,
                      fw: FontWeight.w300,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // frontPassport == false
                        //     ?
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: imageGetNotNull
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.04,
                                      left: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                              decoration: BoxDecoration(
                                  color: lightGrey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(
                                      width: 0.5.w, color: blackColors)),
                              child: imageGetNotNull == false
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 35.w),
                                              height: 130.h,
                                              width: 220.w,
                                              color: Colors.red,
                                              //^by default video showing container
                                              // child: HtmlElementView(
                                              //   key: UniqueKey(),
                                              //   viewType: 'result',
                                              // ),
                                            ),
                                            Text(
                                              "Please scan the Front of your CNIC",
                                              style: TextStyle(
                                                  color: blackColors,
                                                  fontSize: 20.sp,
                                                  wordSpacing: 1.w,
                                                  height: 2.h,
                                                  fontWeight: FontWeight.w300),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15.h),
                                        //^.. Open Photo Camera ..........................................
                                        InkWell(
                                          onTap: () async {
                                            // frontPassport = false;

                                            setState(() {
                                              imageGetNotNull = true;
                                            });

                                            await availableCameras()
                                                .then((value) {
                                              controller = CameraController(
                                                value[0],
                                                ResolutionPreset.max,
                                              );
                                              controller.initialize().then((_) {
                                                if (!mounted) {
                                                  return intilize = false;
                                                }
                                                setState(() {
                                                  intilize = true;
                                                });
                                              });
                                            });

                                            //^rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
                                            // setState(() async {

                                            imageGetNotNull = true;
                                            // frontPassport = true;
                                            // });
                                          },
                                          child: Container(
                                              height: 220.h,
                                              width: 220.w,
                                              decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.1),
                                                border: Border.all(
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
                                                    backgroundColor: blueAxent,
                                                    child: Icon(Icons
                                                        .camera_alt_outlined),
                                                  ),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  Text(
                                                    "Take a photo",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: blueAxent,
                                                        fontSize: 20.sp,
                                                        wordSpacing: 1.w,
                                                        height: 2.h,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    )
                                  : Container(
                                      // color: Colors.red,
                                      child:
                                          // selectedImageInBytes == null
                                          //     ?
                                          Container(
                                              // height: MediaQuery.of(context)
                                              //         .size
                                              //         .height *
                                              //     0.6,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.4,
                                              // color: Colors.pink,
                                              //^camera screen

                                              child: nicFrontUploaded == null &&
                                                      nicImageByCamera == null
                                                  ? intilize == false
                                                      ? Center(
                                                          child:
                                                              CircularProgressIndicator(
                                                          color: blueAxent,
                                                        ))
                                                      : Container(
                                                          height: height * 0.6,
                                                          width: width * 0.5,

                                                          // color: Colors.red,
                                                          child: CameraPreview(
                                                              controller),
                                                        )
                                                  : nicFrontUploaded == null
                                                      ? Container(
                                                          height: height * 0.6,
                                                          width: width * 0.5,
                                                          child: Image.network(
                                                            nicImageByCamera!
                                                                .path,
                                                            // height: 200,
                                                          ),
                                                        )
                                                      : Container(
                                                          height: height * 0.6,
                                                          width: width * 0.5,
                                                          child: Image.memory(
                                                              nicFrontUploaded!),
                                                        ))),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            intilize
                                ? Center(
                                    child: kButton(
                                      onPressed: () async {
                                        nicImageByCamera =
                                            await controller.takePicture();
                                        setState(() {});
                                        controller.dispose();

                                        print(nicImageByCamera.toString() +
                                            ".....................................");
                                      },
                                      h: 48,
                                      w: 100,
                                      text: "Capture",
                                      textColor: Colors.white,
                                      colour: blueAxent,
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                        SizedBox(
                          height: 55.h,
                        ),

                        //^Upload button  re upload button
                        intilize
                            ? SizedBox()
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        imageGetNotNull = true;
                                      });
                                      _selectFile(true);
                                    },
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        width: imageGetNotNull
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.122
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                        decoration: BoxDecoration(
                                          color: whiteColors,
                                          border: Border.all(
                                            width: 1.w,
                                            color: blackColors.withOpacity(0.4),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.add, color: blackColors),
                                            Text(
                                              nicFrontUploaded != null
                                                  ? "Reupload Photos"
                                                  : "Upload Photo",
                                              style: TextStyle(
                                                  fontSize: 20.sp,
                                                  color: blueAxent),
                                            ),
                                          ],
                                        )),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Supported formats: jpg, png, heic",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: blackColors.withOpacity(.5)),
                                  )
                                ],
                              ),
                        SizedBox(
                          height: 15.h,
                        ),
                        //^back next button
                        Container(
                          width: width * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              kButton(
                                  onPressed: () {
                                    setState(() {
                                      faceVideoUploaded = true;
                                      nicFrontUploaded = null;
                                      nicImageByCamera = null;
                                    });
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                WelcomeToUserPortalScreen(
                                          valueindex: 1,
                                          whichScreen: 2,
                                        ),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero,
                                      ),
                                    );
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
                                    // child: new Text("Scroll to data"),

                                    imageGetNotNull == true
                                        ? Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WelcomeToUserPortalScreen(
                                                      valueindex: 2,
                                                      whichScreen: 2,
                                                    )),
                                          )
                                        : SizedBox();
                                  },
                                  h: 55,
                                  w: 250,
                                  textSiz: 17,
                                  text: "Next Step",
                                  textColor: whiteColors,
                                  colour: imageGetNotNull
                                      ? blueAxent
                                      : blueAxent.withOpacity(0.5)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
