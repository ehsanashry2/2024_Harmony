import 'package:flutter/material.dart';
import 'package:get/get.dart'; // استيراد مكتبة GetX
import 'package:ocd/screens/breathe/videos.dart';
import 'package:provider/provider.dart';
import 'package:ocd/provider/noter_provider.dart';

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
        // استخدام GetMaterialApp بدلاً من MaterialApp
        debugShowCheckedModeBanner: false,
        home: VideoListScreen(),
      ),
    );
  }
}
