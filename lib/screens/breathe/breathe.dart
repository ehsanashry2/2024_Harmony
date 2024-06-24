import 'package:flutter/material.dart';
import 'package:ocd/screens/breathe/breathescreen.dart';

class Breathe extends StatelessWidget {
  const Breathe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "  Enjoy moments of calm and \ncontemplation to renew your\n    energy and achieve inner\n                    harmony ",
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
                          'assets/images/breathe.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  Center(
                    child:GestureDetector(
                      onTap: () {
                        // Navigate to another page or perform an action when tapped
                        // Example:
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>YouTubeVideoListScreen()),

                         );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 340),
                        width: 99,
                        height: 99,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0xFF7D4DC3),
                            width: 3,
                          ), // Outer circle color
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
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios, // Your icon
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )

                  ),
                ]),
              ),
            ),
          ]),
    );
  }
}
