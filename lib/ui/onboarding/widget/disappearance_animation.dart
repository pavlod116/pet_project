import 'package:flutter/material.dart';

class DisappearanceAnimation extends StatelessWidget {
  final Duration duration;
  final Widget child;

  const DisappearanceAnimation({super.key, required this.duration, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            axis: Axis.vertical,
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
