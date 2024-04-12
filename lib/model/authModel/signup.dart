import 'package:flutter/foundation.dart';

class SignUpModel extends ChangeNotifier {
  late String email;

  late String fullName;

  late String password;

  // ignore: prefer_typing_uninitialized_variables
  var dateOfBirth;

  // Getters and setters for each field
  // ...

  void createAccount() {
    // Your account creation logic here
    // ...
    notifyListeners();
  }
}
