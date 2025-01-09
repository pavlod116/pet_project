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


  // static ButtonInteractionColors buttonColorsBlue = ButtonInteractionColors(
  //   activeColor: buttonsBlueDefault,
  //   pressedColor: buttonsBluePressed,
  //   disabledColor: buttonsDisabled,
  //   activeInputColor: white,
  //   hoveredInputColor: white,
  //   pressedInputColor: white,
  //   disabledInputColor: white.withOpacity(.48),
  //   outlineColor: const Color(0x00),
  // );


}
