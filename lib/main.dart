import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:ocd/features/onboarding/page1.dart';
//import 'package:ocd/screens/auth/signup.dart';
//import 'package:ocd/screens/auth/sing_in.dart';
import 'package:ocd/screens/survey/congratulations.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Congratulations(),
        );
      },
    );
  }
}
