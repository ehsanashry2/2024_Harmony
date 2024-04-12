import 'package:flutter/material.dart';
import 'package:ocd/features/onboarding/page2.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '      Welcome \n to your path to \n        healing ',
                    style: TextStyle(
                      color: Color(0xFFAA77FF),
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'workSans',
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.double_arrow,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Onboarding2()),
                          );
                        },
                        padding: EdgeInsets.zero, // Remove padding
                        // Alternatively, you can use margin: EdgeInsets.zero,
                      ),
                    ],
                  )
                ],
              ),
            )),
            Expanded(
              child: Stack(children: [
                const SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image(
                      width: double.infinity,
                      image: AssetImage(
                        'assets/images/1.png',
                      ),
                      fit: BoxFit.fill),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 450),
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
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Onboarding2()),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new_outlined, // Your icon
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
    );
  }
}
