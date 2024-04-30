import 'package:flutter/material.dart';

class Sona extends StatelessWidget {
  const Sona({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: SafeArea(
        child: Column(children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
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
          Stack(children: [
            const Padding(
              padding: EdgeInsets.all(60.0),
              child: Image(
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
                    margin: const EdgeInsets.only(top: 500),
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
            ),
          ]),
        ]),
      ),
    );
  }
}
