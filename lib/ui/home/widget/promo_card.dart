import 'package:flutter/material.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:pet_project/ui/style/theme.dart';
class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;

    final double bigFontSize = screenWidth * 0.06;
    final double mediumFontSize = screenWidth * 0.045;

    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: screenWidth,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Color(0xffFFD51D), Color(0xffFC8D3D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Need an\nextra \$200?",
                    style: TextStyle(
                      fontSize: bigFontSize,
                      fontWeight: FontWeight.w900,
                      color: ProjectColors.background,
                    ),
                  ),
                  gap8,
                  Text(
                    "Let AI lend a hand!",
                    style: TextStyle(
                      fontSize: mediumFontSize,
                      fontWeight: FontWeight.w500,
                      color: ProjectColors.background,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: -20,
            child: SizedBox(
              width: 128,
              height: 160,
              child: Image.asset(
                'assets/image/home_robot.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
