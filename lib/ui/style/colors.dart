import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonInteractionColors {
  final Color activeColor;
  final Color pressedColor;
  final Color disabledColor;

  final Color outlineColor;

  final Color activeInputColor;
  final Color hoveredInputColor;
  final Color pressedInputColor;
  final Color disabledInputColor;

  ButtonInteractionColors({
    required this.activeColor,
    required this.pressedColor,
    required this.outlineColor,
    required this.activeInputColor,
    required this.hoveredInputColor,
    required this.pressedInputColor,
    required this.disabledColor,
    required this.disabledInputColor,
  });
}

class ProjectColors {

  static const Color background = Color(0xff24262A);
  static const Color activeIndicatorOnboarding = Color(0xffFFCE1C);
  static const Color disabledIndicatorOnboarding = Color(0xffE1DBC4);
  static const Color activeYellowButton = Color(0xffFFCD21);
  static const Color activeYellowTextButton = Color(0xff24262A);
  static const Color white = Color(0xffFFFFFF);


  static ButtonInteractionColors buttonColorsYellow = ButtonInteractionColors(
    activeColor: activeYellowButton,
    pressedColor: activeYellowButton.withOpacity(0.4),
    disabledColor: disabledIndicatorOnboarding,
    activeInputColor: activeYellowTextButton,
    hoveredInputColor: activeYellowTextButton,
    pressedInputColor: activeYellowTextButton.withOpacity(0.4),
    disabledInputColor: disabledIndicatorOnboarding.withOpacity(0.2),
    outlineColor: const Color(0x00000000),
  );


}
