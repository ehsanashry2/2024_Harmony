import 'package:flutter/material.dart';
import 'package:ocd/model/authModel/signup.dart';
import 'package:ocd/util/font_style.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';
import 'package:ocd/widget/authWidget/customtextfield.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatelessWidget {
  late final font = urbanistHeadTitle;
  @override
  Widget build(BuildContext context) {
    final signUpModel = Provider.of<SignUpModel>(context);
    //late final font = urbanistHeadTitle;
    return Scaffold(
      backgroundColor: const Color(0xFFE5D1FA),
      body: Stack(clipBehavior: Clip.none, children: <Widget>[
        Positioned(
          top: 5,
          left: 100,
          child: Container(
            width: 550,
            height: 550,
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Center(
                    child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'workSans',
                  ),
                )),
                const SizedBox(height: 40.0),
                CustomTextField(
                  fieldName: 'Full Name',
                  onChanged: (value) => signUpModel.fullName = value,
                  prefixIcon: Icons.person,
                ),
                CustomTextField(
                  fieldName: 'email',
                  onChanged: (value) => signUpModel.email = value,
                  prefixIcon: Icons.email,
                ),
                CustomTextField(
                  fieldName: 'Password',
                  onChanged: (value) => signUpModel.password = value,
                  isPassword: true,
                  prefixIcon: Icons.lock,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10.0),
                      child: Text("Date of Birth",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'workSans',
                          )),
                    ),
                    Container(
                      width: 375.0, // Width of the text field
                      // Height of the text field, adjust to your preference
                      margin: const EdgeInsets.only(
                          top: 1.0,
                          left: 20.0,
                          right: 20,
                          bottom: 10), // Adjust positioning if needed
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFAA77FF), Color(0xFFFC65FF)],
                        ),
                        borderRadius: BorderRadius.circular(
                            10.0), // Border radius of the gradient
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            2), // The size of the gradient 'border'
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // TextField background color
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: GestureDetector(
                            onTap: () async {
                              final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate:
                                    signUpModel.dateOfBirth ?? DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (picked != null) {
                                signUpModel.dateOfBirth = picked;
                              }
                            },
                            child: AbsorbPointer(
                              child: TextField(
                                controller: TextEditingController(
                                  text: signUpModel.dateOfBirth != null
                                      ? DateFormat('dd MMMM yyyy')
                                          .format(signUpModel.dateOfBirth)
                                      : '',
                                ),
                                decoration: const InputDecoration(
                                  hintText: 'Date of Birth',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Color(0xFFAA77FF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  buttonText: 'Sign Up',
                  onPressed: () {
                    signUpModel.createAccount();
                  },
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
                        color: Color(0xFF1A1A1A),
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ),
                const Text("Sign In",
                    style: TextStyle(
                      color: Color(0xFFAA77FF),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
