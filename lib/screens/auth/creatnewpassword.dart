import 'package:flutter/material.dart';

import '../../widget/authWidget/customtextfield.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  final codeController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'Create new password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'workSans',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 0), // يمكنك تغيير هذه القيمة للتحكم في المسافة بين بداية الصفحة والصورة
            Image.asset('assets/images/create_new_password.png'),
            SizedBox(height: 50), // المسافة بين الصورة وحقول النص
            const CustomTextField(
              fieldName: 'New Password',
              //onChanged: (value) => signUpModel.password = value,
              isPassword: true,
              prefixImage: 'assets/images/password.png',
              prefixImageWidth: 24.0,
              prefixImageHeight: 27.0,
            ),
            //SizedBox(height: 2),
            const CustomTextField(
              fieldName: 'Confirm password',
              //onChanged: (value) => signUpModel.password = value,
              isPassword: true,
              prefixImage: 'assets/images/password.png',
              prefixImageWidth: 24.0,
              prefixImageHeight: 27.0,
            ),
            SizedBox(height: 100), // المسافة بين حقول النص وزر الحفظ
            SizedBox(
              width: 340, // عرض الزر
              height: 60, // طول الزر
              child: ElevatedButton(
                onPressed: () {
                  // تنفيذ عملية إرسال رمز التحقق
                },
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'workSans',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  //primary: Color(0xFFAA77FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
