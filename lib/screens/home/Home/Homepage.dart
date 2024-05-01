import 'package:flutter/cupertino.dart';
//import 'package:ocd/screens/home/STEPPERWEDGET/Mytimeline.dart';
import 'package:ocd/widget/home/days.dart';
import 'package:ocd/widget/home/startsurveycart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
      ],
    );
  }
}
