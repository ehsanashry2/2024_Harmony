import 'package:flutter/foundation.dart';

class SignUpModel extends ChangeNotifier {
  late String email;

  late String fullName;

  late String password;

  var dateOfBirth;

  // Getters and setters for each field
  // ...

  void createAccount() {
    // Your account creation logic here
    // ...
    notifyListeners();
  }
}
