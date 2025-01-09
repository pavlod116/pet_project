import 'package:flutter/material.dart';

import 'model/onboarding_model.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentIndex = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: "assets/image/robot_0.png",
      text: "Instant \$200 loan, zero fees!",
      buttonText: "Next",
    ),
    OnboardingModel(
      image: "assets/image/robot_money.png",
      text: "AI-powered quick cash, apply now!",
      buttonText: "Start",
    ),
  ];

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void onNextPressed({required VoidCallback onTapNext}) {
    if (currentIndex < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      onTapNext();
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
