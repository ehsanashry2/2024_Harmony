import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

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
              ]),
              CustomButton(
                  buttonText: "Show Result",
                  onPressed: () => _showAlert(context))
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
            title: const Text("Alert!"),
            content: const Text("You have pressed the button."),
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
