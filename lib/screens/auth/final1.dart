import 'package:flutter/material.dart';

import '../home/Home/layoutscreen.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8E4FE),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD8E4FE),
              Colors.white, // Center color
              Color(0xFFD8E4FE),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 35),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 14),
                    child: Text(
                      'Hello and Welcome ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'workSans',
                      ),
                    ),
                  )),
                  const Text(
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
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the desired page here
                        // Example: You can use Navigator.push to navigate to a new page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LayOutScreen()),
                        );
                      },
                      child: Container(
                        width: 99,
                        height: 99,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFF7D4DC3),
                            width: 3,
                          ),
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
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    '\n Start',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'workSans',
                                    ),
                                  ),
                                  const SizedBox(
                                      height: 1), // Adjust spacing as needed
                                  Image.asset(
                                    'assets/images/top.png',
                                    width: 32, // Adjusted size for the image
                                    height: 32,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
