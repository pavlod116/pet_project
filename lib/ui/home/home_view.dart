import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/ui/home/widget/custom_home_card.dart';
import 'package:pet_project/ui/home/widget/promo_card.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:pet_project/ui/style/theme.dart';
import 'package:pet_project/ui/widgets/buttons/simple_button_outlined.dart';

@RoutePage()
class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: mediaQuery.viewPadding.top),
      child: SingleChildScrollView(
        child: Column(
          children: [
            gap24,
            const PromoCard(),
            gap12,
            _buildVerticallyCard(context),
            gap12,
            _buildHorizontallyCard(context),
            gap24,
            Image.asset(
              'assets/image/bike.png',
              height: 22,
              width: 22,
            ),
            gap14,
            _buildButton(),
            gap14,
          ],
        ),
      ),
    );
  }

  Widget _buildButton() {
    return SimpleButtonOutlined(
      interactionColors: ProjectColors.buttonColorsYellow,
      onPressed: () {},
      childBuilder: (context, color, col) {
        return const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  'Let’s do it!',
                  style: TextStyle(
                    color: ProjectColors.background,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHorizontallyCard(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return CustomHomeCard(
      width: mediaQuery.size.width,
      height: 148,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
              child: Text(
                'AI loans,\n instant approval',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: ProjectColors.activeYellowButton,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ),
            gap24,
            Image.asset(
              'assets/image/money.png',
              width: 124,
              height: 106,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerticallyCard(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CustomHomeCard(
            width: mediaQuery.size.width,
            height: 211,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Fast cash,\n zero fees',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: ProjectColors.activeYellowButton,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  gap10,
                  Image.asset(
                    'assets/image/time.png',
                    width: 124,
                    height: 94,
                  ),
                ],
              ),
            ),
          ),
        ),
        gap14,
        Flexible(
          child: CustomHomeCard(
            width: mediaQuery.size.width,
            height: 211,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Apply,\n borrow, enjoy!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: ProjectColors.activeYellowButton,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  gap10,
                  Image.asset(
                    'assets/image/phone.png',
                    width: 137,
                    height: 107,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
