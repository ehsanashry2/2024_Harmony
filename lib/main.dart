import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ocd/features/onboarding/page1.dart';
import 'package:ocd/model/authModel/signup.dart';
import 'package:provider/provider.dart';
//import 'package:ocd/features/onboarding/page1.dart';
// Assuming you have an AuthModel for state management

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) =>
              SignUpModel(), // Initialize your state management model
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const Page1()),
        );
      },
    );
  }
}
