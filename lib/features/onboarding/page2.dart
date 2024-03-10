import 'package:flutter/material.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFE3DFFD),
      body:  Column(

        //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 170,left: 20,right: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text(
                        '        You can track your \n   progress day by day and \n   challenge yourself with \n               daily tasks',
                        style: TextStyle(
                          color: Color(0xFFAA77FF),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'workSans',
                        ),
                      ),

                    ],
                  ),
                )),
            Expanded(
              child: Stack(
                  children: [SizedBox(width: 424,
                    height:624,

                    child: Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: const Image(
                          width: 424,
                          height: 624,
                          image: AssetImage(
                            'assets/images/2.png',
                          ),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 345),
                        width: 99,
                        height:99,
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border:Border.all(
                              color: const Color(0xFF7D4DC3),
                              width: 3

                          ) ,// Outer circle color
                        ),
                        child: Center(
                          child: Container(
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
                            child: Container(
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
                    ),]

              ),
            ),
          ]
      ),
    );
  }
}
