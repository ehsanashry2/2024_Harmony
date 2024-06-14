import 'package:flutter/material.dart';
import 'package:ocd/screens/home/Home/editprofill.dart';
import 'dart:ui';

import '../../auth/sing_in.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final double coverHeight = 160;
  final double ProfileHeight = 110;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight - ProfileHeight / 2;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              buildCoverImage(),
              Positioned(top: top, child: buildProfileImage()),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 0),
                    child: _buildTextField(
                      labelText: 'Mail ',
                      additionalText: 'Omar@gmail.com',
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                    indent: 0.0,
                    endIndent: 0.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildTextField(
                      labelText: 'Notification',
                      icon: Icons.notification_important,
                      suffixIcon: Icons.toggle_off_outlined),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                    indent: 5.0,
                    endIndent: 5.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildTextField(
                    labelText: 'Edit profile',
                    icon: Icons.person,
                    suffixIcon: Icons.arrow_forward_ios_rounded,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                    indent: 5.0,
                    endIndent: 5.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              contentPadding: EdgeInsets.zero,
                              content: Container(
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFAA77FF),
                                      Color(0xFFBA68C8),
                                    ],
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "\n   Are you sure you want \n            to log out ?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'workSans',
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border:
                                                Border.all(color: Colors.white),
                                            gradient: const LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xFFAA77FF),
                                                Color(0xFFBA68C8),
                                              ],
                                            ),
                                          ),
                                          width: 130,
                                          height: 42,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SignIn()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent),
                                            child: const Text(
                                              " Log me out",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'workSans',
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Profil()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.white, // لون خلفية الزر
                                          ),
                                          child: Row(
                                            children: [
                                              const SizedBox(width: 8),
                                              Container(
                                                color: Colors.white,
                                                child: const Text(
                                                  "Stay logged in",
                                                  style: TextStyle(
                                                    color: Color(0xFFAA77FF),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'workSans',
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.logout_sharp, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          "Log out",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'workSans',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        width: double.infinity,
        height: 160,
        color: const Color(0xFFE5D1FA),
      );

  Widget buildProfileImage() => Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.white),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 15,
                  color: Colors.black.withOpacity(0.1),
                )
              ],
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/imageprofill.png",
              width: ProfileHeight,
              height: ProfileHeight,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Omar Ahmed",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: 'workSans',
              fontSize: 20,
            ),
          ),
        ],
      );

  Widget _buildTextField({
    required String labelText,
    IconData? icon,
    IconData? suffixIcon,
    String? additionalText, // إضافة نص إضافي هنا
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'workSans',
                    fontSize: 15,
                  ),
                ),
                if (additionalText != null) // إذا كان هناك نص إضافي، قم بعرضه
                  Text(
                    additionalText,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'workSans',
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
          if (suffixIcon != null)
            IconButton(
              color: Colors.grey,
              iconSize: 25,
              icon: Icon(suffixIcon),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Editprofill()),
                );
              },
            ),
        ],
      ),
    );
  }
}
