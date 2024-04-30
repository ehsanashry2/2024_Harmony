import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ocd/screens/home/Home/layoutscreen.dart';

//import 'package:ocd/features/onboarding/page1.dart';
//import 'package:ocd/screens/auth/signup.dart';
//import 'package:ocd/screens/auth/sing_in.dart';

//import 'package:ocd/screens/survey/survey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            navigatorKey: Get.key,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: LayOutScreen());
      },
    );
  }
}
