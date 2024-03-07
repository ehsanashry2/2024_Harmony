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

  const CustomTextField(
      {super.key,
      required this.fieldName,
      this.onChanged,
      this.isPassword = false,
      this.prefixIcon,
      this.onTap,
      this.dateFormat,
      this.prefixIconColor});

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
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans',
              ),
            ),
          ),
          Container(
            // Height of the text field, adjust to your preference
            margin: const EdgeInsets.only(
                top: 1.0,
                left: 20.0,
                right: 20), // Adjust positioning if needed
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFAA77FF), Color(0xFFFC65FF)],
              ),
              borderRadius:
                  BorderRadius.circular(10.0), // Border radius of the gradient
            ),
            child: Padding(
              padding:
                  const EdgeInsets.all(2), // The size of the gradient 'border'
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // TextField background color
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  obscureText: isPassword,
                  onChanged: (value) => onChanged,
                  decoration: InputDecoration(
                    // Your label
                    // Centers the text vertically
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide.none, // Removes default underline border
                    ),
                    prefixIcon: prefixIcon != null
                        ? Icon(
                            prefixIcon,
                            color: const Color(0xFFAA77FF),
                          )
                        : null,
                    suffixIcon: isPassword
                        ? const Icon(Icons.visibility_off)
                        : null, // Optional: icon inside text field
                  ),
                  controller: TextEditingController(
                    text: dateFormat != null && onTap == null
                        ? dateFormat!.format(DateTime.now())
                        : '', // Apply the dateFormat to the text field
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
