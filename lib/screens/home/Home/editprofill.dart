import 'package:flutter/material.dart';

import 'Profill.dart';




class Editprofill extends StatelessWidget {
  const Editprofill({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const EditprofillScreen(),
    );
  }
}

class EditprofillScreen extends StatelessWidget {
  const EditprofillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Profil()),
              );
            },
          ),

        ),
        body: Container(
            padding: const EdgeInsets.only(left:15 ,right:15 ,top: 20),
            child: GestureDetector(
              onTap: (){
                FocusScope.of(context).unfocus();
              },
              child: ListView(
                  children: [
                    Center(
                      child: Stack(
                          children: [
                            Container(
                              width: 141,
                              height: 143.54,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 4,color: Colors.white),

                                  shape: BoxShape.circle,
                                  image: const DecorationImage(

                                      image: AssetImage("assets/images/imageprofill.png")
                                  )

                              ),
                            ),

                          ]
                      ),
                    ),
                    const SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildTextField(labelText: 'Full Name ', hint: 'Omar Ahmed',hintIcon: Icons.person ),
                          _buildTextField(labelText: 'Email', hint: 'Omar@gmail.com', hintIcon: Icons.email,),
                          _buildTextField(labelText: 'Password', hint: '**********', obscureText: true, hintIcon: Icons.visibility),
                          _buildTextField(labelText: 'Date of Birth', hint: '5 JULY 2002', keyboardType: TextInputType.datetime, hintIcon: Icons.calendar_today),
                          const SizedBox(height: 24.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(


                                backgroundColor: const Color(0xffAA77FF),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                            ),
                            onPressed: () {

                            },
                            child: const Text('Save'),
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            )
        )
    );

  }

  Widget _buildTextField({required String labelText, required String hint, IconData? icon, IconData? suffixIcon, IconData? hintIcon, bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            labelText,
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8.0), // Add spacing between label and hint
          TextField(
            cursorColor: Color(0xffAA77FF),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey),
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: suffixIcon != null ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: () {},
              ) : null,
              suffixIconConstraints: BoxConstraints(
                minWidth: 24, // Adjust according to your preference
                minHeight: 24,
              ),
              prefixIcon: hintIcon != null ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(hintIcon),
                  SizedBox(width: 8.0), // Add spacing between hint icon and text field
                ],
              ) : null, // Add the hint icon
              prefixIconConstraints: BoxConstraints(
                minWidth: 24, // Adjust according to your preference
                minHeight: 24,
              ),
            ),
            obscureText: obscureText,
            keyboardType: keyboardType,
          ),
        ],
      ),
    );
  }


}




