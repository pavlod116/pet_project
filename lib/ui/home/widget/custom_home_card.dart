import 'package:flutter/material.dart';
import 'package:pet_project/ui/style/colors.dart';

class CustomHomeCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const CustomHomeCard({super.key, required this.width, required this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ProjectColors.backgroundCard,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: ProjectColors.activeYellowButton,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
