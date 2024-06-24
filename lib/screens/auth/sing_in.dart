import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocd/cubits/auth_cubit/auth_cubit.dart';
import 'package:ocd/screens/auth/final1.dart';
import 'package:ocd/screens/auth/forgetpassword.dart';
import 'package:ocd/screens/auth/signup.dart';

import 'package:ocd/widget/authWidget/custombutton.dart';
import 'package:ocd/widget/authWidget/customtextfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
              ),
            ),
            const Image(
              image: AssetImage(
                'assets/images/4.png',
              ),
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 40.0),
            CustomTextField(
              onChanged: (value) {
                BlocProvider.of<AuthCubit>(context).email = value;
              },
              fieldName: 'Email',
              isPassword: false,
              prefixImage: 'assets/images/email.png',
              prefixImageWidth: 26.0,
              prefixImageHeight: 20.0,
            ),
            CustomTextField(
              onChanged: (value) {
                BlocProvider.of<AuthCubit>(context).password = value;
              },
              fieldName: 'Password',
              isPassword: true,
              prefixImage: 'assets/images/password.png',
              prefixImageWidth: 24.0,
              prefixImageHeight: 27.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 200.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  'Forgot my Password',
                  style: TextStyle(
                    color: Color(0xFF808080), // Gray color
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            CustomButton(
              buttonText: 'Sign In',
              onPressed: () async {
                await BlocProvider.of<AuthCubit>(context).login();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Final()),
                );
              },
              topMargin: 44,
              leftMargin: 33.0,
              rightMargin: 33.0,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: Text(
                "I don't have an account",
                style: TextStyle(color: Color(0xFF808080), fontSize: 13.0),
              ),
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFFAA77FF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
