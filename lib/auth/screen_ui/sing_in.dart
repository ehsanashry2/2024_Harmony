import 'package:flutter/material.dart';
import 'package:ocd/auth/screen_ui/home.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';
import 'package:ocd/widget/authWidget/customtextfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3DFFD),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Center(
                child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Hello Again!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'workSans',
                ),
              ),
            )),
            const Image(
                image: AssetImage(
                  'assets/images/4.png',
                ),
                fit: BoxFit.fill),
            const SizedBox(height: 40.0),
            const CustomTextField(
              fieldName: 'Email',
              isPassword: false,
              prefixIcon: Icons.email,
            ),
            const CustomTextField(
              fieldName: 'Password',
              isPassword: true,
              prefixIcon: Icons.lock,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 200.0),
              child: Text('Forgot my Password',
                  style: TextStyle(color: Color(0xFF1A1A1A), fontSize: 13.0)),
            ),
            const SizedBox(height: 20.0),
            CustomButton(
              buttonText: 'Sign In',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: Text("I don't have an account",
                  style: TextStyle(color: Color(0xFF1A1A1A), fontSize: 13.0)),
            ),
            const SizedBox(height: 20.0),
            const Text('Sign Up',
                style: TextStyle(
                  color: Color(0xFFAA77FF),
                ))
          ],
        ),
      ),
    );
  }
}
