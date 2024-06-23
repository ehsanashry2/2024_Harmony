import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String fieldName;
  final Function(String)? onChanged;
  final bool isPassword;
  final String? passwordImage;
  final String? prefixImage;
  final double prefixImageWidth;
  final double prefixImageHeight;

  const CustomTextField({
    Key? key,
    required this.fieldName,
    this.onChanged,
    this.isPassword = false,
    this.passwordImage,
    this.prefixImage,
    this.prefixImageWidth = 26.0,
    this.prefixImageHeight = 26.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10.0),
          child: Text(
            fieldName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'WorkSans',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFAA77FF), Color(0xFFFC65FF)],
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  TextFormField(
                    obscureText: isPassword,
                    onChanged: onChanged,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: null,
                      suffixIcon: isPassword
                          ? (passwordImage != null
                          ? Image.asset(
                        passwordImage!,
                        width: 35.0,
                        height: 35.0,
                        fit: BoxFit.cover,
                      )
                          : const Icon(Icons.visibility_off))
                          : null,
                    ),
                  ),
                  if (prefixImage != null)
                    Positioned(
                      left: 0,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        child: Image.asset(
                          prefixImage!,
                          width: prefixImageWidth,
                          height: prefixImageHeight,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  Positioned(
                    left: 46.0,
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
        ),
      ],
    );
  }
}
