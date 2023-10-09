import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global_compliance/AboutMain.dart';
import 'package:global_compliance/Providers/AppBarProvider.dart';
import 'package:global_compliance/Providers/CalenderProvider.dart';
import 'package:global_compliance/Providers/CountryDropDownProvider.dart';
import 'package:global_compliance/Providers/RadioSwitchButtonProvider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

// firebase use <amlcompliance-45520>

String FIREBASE_TOKEN =
    "1//03MHlpqBqAAe9CgYIARAAGAMSNwF-L9Ire71bGBa-3Gs7tJdna7_jy1JdL-tPXmgoeyerpq0KWCFZhtomYkqfuT0aqfWszPH5KqM";
// Platform  Firebase App Id
// web       1:65106432758:web:a599669b5219cd291992d7
Future<void> main() async {
  //  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// https://pub.dev/packages/file_picker
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: Size(1736, 800),
      // minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => CountryDropDownProvider()),
              ChangeNotifierProvider(create: (_) => CalenderProvider()),
              ChangeNotifierProvider(
                  create: (_) => RadioSwitchButtonProvider()),
              ChangeNotifierProvider(create: (_) => AppBarProvider()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: child,
            ));
      },
      // shankar.peerthy@swissamf.com
      //pass      Dfe9h1948JY#j    asdasdasd
// Dfe9h1948JY#j
      //https://portal.globalcompliance.ch/screenings

// verification screens
// https://identity-check.globalcompliance.ch/?token=e38ffaa2-9147-43bf-b32a-232b1034dd84

      // child: WelcomeToUserPortalScreen(
      //   valueindex: 0,
      // ),
      child: AboutMain(),
    );
  }
}

//https://pub.dev/packages/country_state_city_picker

// https://medium.com/dkatalis/create-a-video-recording-on-flutter-web-44b141711d21       https://github.com/munyaaa/flutter-web-recording/blob/master/lib/main.dart