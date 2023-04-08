import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kjverse/Controller/appController.dart';
import 'package:kjverse/View/SplashScreen/splashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("aadrishh,,,,,,,,,,,,,,,,,,,,,,,,,");
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return

    ScreenUtilInit(
        designSize: const Size(390, 844),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {

          final AppController appController = Get.put(AppController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );});
  }
}


