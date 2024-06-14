import 'package:flutter/material.dart';

import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  //Test({required Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  File? image; // Nullable File to handle initial null state
  final ImagePicker _picker = ImagePicker();

  // Function to pick image from camera
  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Image"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _pickImage,
              child: const Text(
                "Pick Image",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (image != null)
            Image.file(
              image!,
              height: 200,
            )
          else
            const Text("No image selected"),
        ],
      ),
    );
  }
}
