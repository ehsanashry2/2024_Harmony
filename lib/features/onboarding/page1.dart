import 'package:flutter/material.dart';
import 'package:ocd/features/onboarding/page2.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  void _onHorizontalDragEnd(DragEndDetails details) {
    if (details.primaryVelocity! < 0) {
      // Swipe Left to navigate to next screen
      Navigator.push(
        context,
        _createRoute(onboarding2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: GestureDetector(
        onHorizontalDragEnd: _onHorizontalDragEnd,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 130, left: 340),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          _createRoute(onboarding2()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/icon12.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        '      Welcome \n to your path to \n        healing ',
                        style: TextStyle(
                          color: Color(0xFFAA77FF),
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'workSans',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    width: 424,
                    height: 724,
                    child: Image(
                      width: double.infinity,
                      image: AssetImage('assets/images/1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 370),
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
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFAA77FF),
                                Color(0xFFDE5BF8),
                              ],
                              stops: [0.1242, 0.8177],
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  _createRoute(onboarding2()),
                                );
                              },
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

Route _createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
