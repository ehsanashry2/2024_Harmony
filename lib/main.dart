import 'package:flutter/material.dart';
import 'package:get/get.dart'; // استيراد مكتبة GetX
import 'package:ocd/screens/auth/forgetpassword.dart';
import 'package:ocd/screens/auth/signup.dart';
import 'package:ocd/screens/lifestyle/life.dart';
import 'package:ocd/screens/podcast/podcastpage.dart';


import 'package:provider/provider.dart';
import 'package:ocd/provider/noter_provider.dart';
import 'package:ocd/screens/lifestyle/life.dart';
import 'package:ocd/screens/notes/NewNoteDetalis.dart';
import 'package:ocd/screens/notes/newnotscreen.dart';

import 'features/onboarding/page1.dart';
import 'screens/auth/creatnewpassword.dart';
import 'screens/notes/1233.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:OnBoarding ()
    ));
  }
}
