import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTextField extends StatelessWidget {
  final String fieldName;
  final Function(String)? onChanged;
  final bool isPassword;
  final IconData? prefixIcon;
  final VoidCallback? onTap;
  final DateFormat? dateFormat;
  final Color? prefixIconColor;
  final TextStyle? textStyle;

  const CustomTextField({
    Key? key,
    required this.fieldName,
    this.onChanged,
    this.isPassword = false,
    this.prefixIcon,
    this.onTap,
    this.dateFormat,
    this.prefixIconColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10.0),
            child: Text(
              fieldName,
              style: textStyle ?? const TextStyle(
                fontSize: 20,
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
                  children: [
                    TextFormField(
                      obscureText: isPassword,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: prefixIcon != null
                            ? Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              prefixIcon,
                              color: prefixIconColor ?? const Color(0xFFAA77FF),
                              size: 35.0,
                            ),
                            Positioned(

                              right: 0.0, // تعديل المسافة عند الحاجة
                              child: Container(
                                width: 1.0,
                                height: 40.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                            : null,
                        suffixIcon: isPassword
                            ? const Icon(Icons.visibility_off)
                            : null,
                      ),
                      controller: TextEditingController(
                        text: dateFormat != null && onTap == null
                            ? dateFormat!.format(DateTime.now())
                            : '',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
