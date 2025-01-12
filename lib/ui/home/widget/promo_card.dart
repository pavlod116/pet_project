import 'package:flutter/material.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:pet_project/ui/style/theme.dart';

const textStyleBig = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w900,
  color: ProjectColors.background,
);

const textStyleMedium = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: ProjectColors.background,
);

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Color(0xffFFD51D), Color(0xffFC8D3D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Need an\nextra \$200?",
                    style: textStyleBig,
                  ),
                  gap8,
                  Text(
                    "Let AI lend a hand!",
                    style: textStyleMedium,
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
