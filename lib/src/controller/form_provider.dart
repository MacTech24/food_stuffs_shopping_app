import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  Color _suffixIconColor = Colors.red;
  IconData _suffixIcon = Icons.close;
  String _emailErrorText = "";
  Color _emailErrorColor = Colors.red;
  String _passwordErrorText = "";
  Color _passwordErrorColor = Colors.red;
  bool _isPasswordVisible = true;
  String _nameErrorText = "";
  Color _nameErrorColor = Colors.red;

  Color get suffixIconColor => _suffixIconColor;
  IconData get suffixIcon => _suffixIcon;
  String get emailErrorText => _emailErrorText;
  Color get emailErrorColor => _emailErrorColor;
  String get passwordErrorText => _passwordErrorText;
  Color get passwordErrorColor => _passwordErrorColor;
  bool get isPasswordVisible => _isPasswordVisible;
  String get nameErrorText => _nameErrorText;
  Color get nameErrorColor => _nameErrorColor;

  void toggleVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void validateName(String value) {
    if (value.isEmpty) {
      _nameErrorText = "  Field cannot be empty";
    } else {
      _nameErrorText = "";
    }

    notifyListeners();
  }

  void validateEmail(String value) {
    if (value.isEmpty) {
      _suffixIcon = Icons.close;
      _suffixIconColor = Colors.red;
      _emailErrorText = "  Field cannot be empty";
      _emailErrorColor = Colors.red;
    } else if (!isEmail(value)) {
      _suffixIcon = Icons.close;
      _suffixIconColor = Colors.red;
      _emailErrorText = "  Please Enter a valid Email";
      _emailErrorColor = Colors.red;
    } else {
      _suffixIcon = Icons.check_rounded;
      _suffixIconColor = Colors.green;
      _emailErrorText = "  The email is now valid";
      _emailErrorColor = Colors.green;
    }
    notifyListeners();
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      _passwordErrorText = "  Field cannot be empty";
      _passwordErrorColor = Colors.red;
    } else if (value.length < 6) {
      _passwordErrorText = "  Password cannot be less than 6 characters";
      _passwordErrorColor = Colors.red;
    } else {
      _passwordErrorText = "  Password is now valid";
      _passwordErrorColor = Colors.green;
    }
    notifyListeners();
  }

  bool isEmail(String value) {
    return value.contains("@gmail.com");
  }

  bool get isValid {
    if (_suffixIconColor == Colors.green &&
        _passwordErrorColor == Colors.green) {
      return true;
    } else {
      return false;
    }
  }

  void submitData() {}
}
