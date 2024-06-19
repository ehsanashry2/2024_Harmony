import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Text(
                  "Track your progress and achieve\nyour goals with the progress\nscreen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFAA77FF),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'workSans',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 380,
                    height: 380,
                    child: Image.asset(
                      'assets/images/progrees.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                      width: 99,
                      height: 99,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0xFF7D4DC3),
                          width: 3,
                        ),
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
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

