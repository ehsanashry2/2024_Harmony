import 'package:flutter/material.dart';
import 'package:ocd/features/onboarding/page2.dart';
// ignore: unused_import
import 'package:ocd/util/color.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xffDCC1FF),
          child: Container(
            width: double.infinity,
            height: 2700,
            margin: const EdgeInsets.only(top: 430),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/1.png",
                  ),
                  fit: BoxFit.fill //fit: BoxFit.fill
                  ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 200),
                  child: const Text(
                    "Welcome \n to your path to \n healing",
                    style: TextStyle(
                        color: Color(0xffAA77FF),
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 1300),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Page2();
                      }));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 70,
                      color: Color(0xffAA77FF),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
