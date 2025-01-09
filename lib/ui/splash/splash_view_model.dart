import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  bool _isLogoVisible = true;

  bool get isLogoVisible => _isLogoVisible;

  void toggleVisibility() {
    _isLogoVisible = !_isLogoVisible;
    notifyListeners();
  }

  void startAnimation({
    required BuildContext context,
    required VoidCallback onSuccess,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    toggleVisibility();
    await Future.delayed(const Duration(seconds: 2));
    onSuccess();
  }
}
