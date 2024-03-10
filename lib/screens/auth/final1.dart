import 'package:flutter/material.dart';
import 'package:wasswas/widget/serveyWidget/buttomsurvey.dart';
import 'package:wasswas/widget/serveyWidget/buttomsurvey.dart';

class Sona extends StatelessWidget {
  const Sona({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: SafeArea(
        child: Column(
            children: <Widget>[
              Padding(

                padding: const EdgeInsets.only(left: 8.0),

              ),
              const Center(
                  child: Padding(
                    padding: EdgeInsets.all(27.0),
                    child: Text(
                      '      Welcome \n to your path to \n        healing ',
                      style: TextStyle(
                        color: Color(0xFFAA77FF),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'workSans',
                      ),
                    ),

                  )),
              Stack(
                  children: [ Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: const Image(
                        width: 592,
                        height: 480,
                        image: AssetImage(
                          'assets/images/1.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                    Center(
                      child: Container(
                        width: 99,
                        height:99,
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border:Border.all(
                              color: Color(0xFF7D4DC3),
                              width: 3

                          ) ,// Outer circle color
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 500),
                            width: 77,
                            height: 77,
                            decoration: BoxDecoration(
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
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios, // Your icon
                                color: Colors.white,

                              ),


                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              ),
            ]
        ),

      ),
    );
  }
}
