import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocd/cubits/auth_cubit/auth_cubit.dart';
import 'package:ocd/screens/auth/final1.dart';
import 'package:ocd/screens/auth/sing_in.dart';
import 'package:ocd/util/font_style.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';
import 'package:ocd/widget/authWidget/customtextfield.dart';

class SignUpScreen extends StatelessWidget {
  final font = urbanistHeadTitle;

  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: Form(
        child: Stack(clipBehavior: Clip.none, children: <Widget>[
          Positioned(
            top: 5,
            left: 180,
            child: Container(
              width: 650,
              height: 650,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFFAA77FF),
                    Color(0xFFFFFFFF),
                  ],
                  stops: [0.2519, 0.9275],
                  transform: GradientRotation(
                      35.46 * 3.14 / 180), // Convert degrees to radians
                ), // Adjust the color to match your design
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000), // Set the shadow color here
                    blurRadius: 12, // Set the blur radius
                    spreadRadius: 0, // Set the spread radius
                    offset: Offset(0, 0), // Set the offset
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 16.0, left: 16, top: 50, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Center(
                      child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'workSans',
                    ),
                  )),
                  const SizedBox(height: 40.0),
                  CustomTextField(
                    fieldName: 'Full Name',
                    onChanged: (value) {
                      BlocProvider.of<AuthCubit>(context).userName = value;
                    },
                    prefixImage: 'assets/images/name.png',
                    prefixImageWidth: 20.0,
                    prefixImageHeight: 26.0,
                  ),
                  CustomTextField(
                    fieldName: 'Email',
                    onChanged: (value) {
                      BlocProvider.of<AuthCubit>(context).email = value;
                    },
                    prefixImage: 'assets/images/email.png',
                    prefixImageWidth: 26.0,
                    prefixImageHeight: 20.0,
                  ),
                  CustomTextField(
                    fieldName: 'Password',
                    onChanged: (value) {
                      BlocProvider.of<AuthCubit>(context).password = value;
                    },
                    isPassword: true,
                    prefixImage: 'assets/images/password.png',
                    prefixImageWidth: 25.0,
                    prefixImageHeight: 27.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10.0),
                          child: Text("Date of Birth",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'workSans',
                              )),
                        ),
                        Container(
                          width: 375.0,
                          margin: const EdgeInsets.only(
                              top: 1.0,
                              left: 20.0,
                              right: 20,
                              bottom: 10), // تعديل التمركز إذا لزم الأمر
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFFAA77FF), Color(0xFFFC65FF)],
                            ),
                            borderRadius: BorderRadius.circular(
                                10.0), // نص الحقل النصي الأساسي
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                2), // حجم لون حاشية المستطيل
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white, // لون الخلفية الحقل النصي
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Stack(
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      BlocProvider.of<AuthCubit>(context)
                                          .dateOfBirth = value;
                                    },
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      hintText: '  15 July 2002',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      prefixIcon: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/birth.png', // استبدل بمسار الصورة في مشروعك
                                            width: 30,
                                            height: 30,
                                            color: Color(
                                                0xFFAA77FF), // يمكنك تحديد لون الصورة هنا إذا لزم الأمر
                                          ),
                                          Positioned(
                                            right: 0.0,
                                            child: Container(
                                              width: 1.0,
                                              height: 40.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                  CustomButton(
                    buttonText: 'Sign Up',
                    onPressed: () async {
                      await BlocProvider.of<AuthCubit>(context).signUp();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Final()),
                      );
                    },
                    topMargin: 40,
                    leftMargin: 33,
                    rightMargin: 33,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push to sign in screen
                      },
                      child: const Text(
                        'I already have an account',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color(0xFFAA77FF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
