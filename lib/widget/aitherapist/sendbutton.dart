import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        bottom: 15.0,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Color(0xFFA1A1A1),
            fontSize: 16,
            fontFamily: 'WorkSans',
          ),
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: Container(
            margin: EdgeInsets.all(4),
            width: 33,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFAB93E0),
            ),
            child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {},
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
