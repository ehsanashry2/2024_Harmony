import 'package:flutter/material.dart';
import 'package:ocd/model/surveymodel.dart';
//import 'package:flutter/widgets.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';

class Congratulations extends StatelessWidget {
  final OCDLevel level;
  const Congratulations({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.8953,
            colors: [
              Color(0xFFE5D1FA), // Start color
              Color(0xFFAA77FF), // End color
            ],
            stops: [0, 1],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
                child: Center(
                  child: Text(
                    'Congratulations',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'WorkSans',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text(
                'You have completed the survey\n               successfully',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'WorkSans',
                  color: Colors.white,
                ),
              ),
              Stack(children: [
                const Image(
                  image: AssetImage('assets/images/15.png'),
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 60),
                  child: const Image(
                    image: AssetImage('assets/images/16.png'),
                    fit: BoxFit.fill,
                    // width: 190,
                    // height: 190,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 450,
                  ),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 20,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CustomButton(
                    buttonText: "Show Result",
                    onPressed: () => _showAlert(context),
                    topMargin: 0,
                    leftMargin: 33.0,
                    rightMargin: 33.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 530,
                    left: 130,
                  ),
                  child: const Text(
                    'Go to home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "WorkSans",
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }

  _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            backgroundColor: Colors.white,
            title: const Text("Alert!"),
            content:
                Text("Your OCD Level is: ${level.toString().split('.').last}"),
            actions: <Widget>[
              TextButton(
                child: const Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
