import 'package:flutter/material.dart';

import '../../widget/authWidget/customtextfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'workSans',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset('assets/images/forgot_password.png', width: 258, height: 258),
            SizedBox(height: 100),
            CustomTextField(
              fieldName: ' Please, Enter your email address',
              prefixImage: 'assets/images/email.png',
              prefixImageWidth: 26.0,
              prefixImageHeight:20.0,
            ),
            SizedBox(height: 230),
            SizedBox(
              width: 340,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // عرض رسالة تحذيرية بدلاً من SnackBar
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        title: Text('Check Your Mail', textAlign: TextAlign.center,
                          style: TextStyle(
                            color:Color(0xFFAA77FF),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'workSans',
                          ),
                        ),
                        actions: <Widget>[
                          Center(
                            child: Container(
                              width: 70,
                              height: 40,
                              child: TextButton(
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFAA77FF)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'workSans',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFAA77FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
