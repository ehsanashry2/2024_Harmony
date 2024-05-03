import 'package:flutter/material.dart';

import '../home/Home/layoutscreen.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8E4FE),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFD8E4FE),
              Colors.white, // Center color
              const Color(0xFFD8E4FE),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Center(
                    child: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text(
                    'Hello and Welcome ',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'workSans',
                    ),
                  ),
                )),
                Text(
                  'To your first step to wards \n                healing.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'workSans',
                  ),
                ),
                const Image(
                    image: AssetImage(
                      'assets/images/5.png',
                    ),
                    fit: BoxFit.fill),
                const SizedBox(height: 40.0),
                const Text(
                    ' Please answer some questions \nfirst so that we can choose the\n  right therapeutic program for \n                         you ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 99,
                  height: 99,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                        color: Color(0xFF7D4DC3),
                        width: 3), // Outer circle color
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
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_upward, // Your icon
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LayOutScreen()), // Replace NextPage() with the desired page
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
