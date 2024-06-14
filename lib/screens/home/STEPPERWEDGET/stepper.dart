import 'package:flutter/material.dart';

import 'Mytimeline.dart';

class Stepper extends StatefulWidget {
  const Stepper({super.key});

  @override
  State<Stepper> createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children:const [
            MyTimeLineTile(
                isFirst: true,
                isLast: false,
                ispast: true,
                isffff:false ,
                eventcard: Text("Learn about obsessive-\n compulsive cleanliness \n \n \n"
                    "Done",style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'workSans',
                ),),

            ),
            MyTimeLineTile(
                isFirst:false,
                isLast: false,
                ispast: false,
                isffff: false,
              eventcard: Text("Focused breath"),
            ),
            MyTimeLineTile(
                isFirst: false,
                isLast: false,
                ispast: false,
                isffff: false,
              eventcard: Text("AI therapist"),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast:true,
              ispast: false,
              isffff:false ,
              eventcard: Text("Enjoy your time and try \n playing some game"),

            ),

          ],
        ),
      ),
    );
  }
}
