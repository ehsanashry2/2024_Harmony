import 'package:flutter/material.dart';
import 'package:ocd/widget/serveywidget/question.dart';
import '../../widget/serveywidget/buttomsurvey.dart';

class survey extends StatelessWidget {
  const survey({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFE3DFFD),
            Colors.white, // Center color
            const Color(0xFFE3DFFD),

          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child:const question(
                      questions: "How much time do you spend on obsessions?",),
                  )),
              const Image(image: AssetImage('assets/images/4.png',),
                  width: 190,
                  height: 190,
                  fit: BoxFit.fill),

              const Buttomservey(text: "   None"),

              const Buttomservey(text: "   0-1 Hour/daily",),

              const Buttomservey(text: "   1-3 Hours/daily",),

              const Buttomservey(text: "   3-8 Hours/daily",),

              const Buttomservey(text: "   More than 8 hours daily",),










            ],
          ),
        ),
      ),
    );
  }
}
