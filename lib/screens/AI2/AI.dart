import 'package:flutter/material.dart';
import 'package:ocd/screens/AI2/ai_therapist.dart';

class AI extends StatelessWidget {
  const AI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Center(
                child: const Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '      Chat with an AI-powered\n therapist ready to answer all\n              your questions ',
                    style: TextStyle(
                      color: Color(0xFFAA77FF),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'workSans',
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Stack(children: [
                  const SizedBox(
                    width: 380,
                    height: 380,
                    child: Image(
                        width: double.infinity,
                        image: AssetImage(
                          'assets/images/ai.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 340),
                      width: 99,
                      height: 99,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: const Color(0xFF7D4DC3),
                            width: 3), // Outer circle color
                      ),
                      child: Center(
                        child: Container(
                          width: 77,
                          height: 77,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFAA77FF),
                                Color(0xFFD932D2),
                              ],
                              stops: [0.1242, 0.8177],
                            ),
                          ),
                          child: Container(
                            child: Center(
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios, // Your icon
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ChaBot()), // Replace NextPage() with the desired page
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]),
    );
  }
}
