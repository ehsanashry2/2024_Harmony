import 'package:flutter/material.dart';
import 'package:ocd/widget/home/days.dart';
import 'package:ocd/widget/home/startsurveycart.dart';

class Soonpage extends StatefulWidget {
  const Soonpage({super.key});

  @override
  State<Soonpage> createState() => _SoonpageState();
}

class _SoonpageState extends State<Soonpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 50.0),
            child: Text("Hello, Omar",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'workSans',
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Days(),
          ),
          SurveyCart(),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: const Text(
              "Omar's Plan",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Animation .gif',
                  width: 100,
                  height: 100,
                ),
                Text(
                  "Coming Soon....",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // color: Colors.grey,

                  ),

                ),

                SizedBox(height: 10),
                Text(
                  "Exciting new features to help you better manage your OCD.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    // color: Colors.gery
                  ),
                ),
              ],
            ),
          ),
          // _isFirstLaunch ? Soonpage() : PlanScreen(),
        ],
      ));
  }
}
