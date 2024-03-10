import 'package:flutter/material.dart';
import 'package:ocd/model/surveymodel.dart';

class Buttomservey extends StatelessWidget {
  final List<SurveyOption> options;
  final void Function() onPressed;

  const Buttomservey({
    Key? key,
    required this.options,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 350,
      child: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          return GestureDetector(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 340,
                height: 47,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xffAA77FF), Color(0xffAA77FF)],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      2), // The size of the gradient 'border'
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // TextField background color
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        option.optionText,
                        style: const TextStyle(
                          fontSize: 20,
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
          );
        },
      ),
    );
  }
}
