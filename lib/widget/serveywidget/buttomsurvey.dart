import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Buttomservey extends StatelessWidget {
  final String text;
  const Buttomservey(
      {super.key,
        required this.text,
      });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width:340 ,
              height:47 ,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xffAA77FF), Color(0xffAA77FF)],
                ),
                borderRadius:
                BorderRadius.circular(20.0),

              ),
              child: Padding(
                padding:
                const EdgeInsets.all(2), // The size of the gradient 'border'
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // TextField background color
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: const TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      color: Colors.black,
                      ),
                      ),
                  ),
                    ),
                ),
              ),
          ),
            ]

           ),
    );
  }
}
