import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_project/service/onboarding_service.dart';
import 'package:pet_project/ui/onboarding/widget/disappearance_animation.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:pet_project/ui/widgets/buttons/simple_button_outlined.dart';
import '../../routing/router.gr.dart';
import 'onboarding_view_model.dart';
import '../style/theme.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OnboardingViewPage extends StatefulWidget {
  const OnboardingViewPage({super.key});

  @override
  State<OnboardingViewPage> createState() => _OnboardingViewPageState();
}

class _OnboardingViewPageState extends State<OnboardingViewPage> {
  final onboardingService = OnboardingService();

  void onTapNextAndSkip() async {
    await onboardingService.setOnboardingSeen(true);
    navigateHome();
  }

  void navigateHome() {
    context.router.replaceAll([const HomeButtonNavBarViewRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.background,
      body: SafeArea(
        child: Padding(
          padding: paddingH16,
          child: Consumer<OnboardingViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                children: [
                gap24,
                _buildTextSkip(viewModel),
                gap14,
                _buildImage(viewModel),
                gap48,
                _buildPageIndicator(viewModel),
                gap16,
                _buildTitle(viewModel),
                const Gap(84),
                _buildButton(viewModel),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTextSkip(OnboardingViewModel viewModel) {
    return Row(
      children: [
        const Spacer(),
        DisappearanceAnimation(
          duration: const Duration(milliseconds: 300),
          child: viewModel.currentIndex == 0
              ? GestureDetector(onTap: () => onTapNextAndSkip(), child: const Text(
            'Skip',
            style: textMediumSize,
            key: ValueKey('skipText'),
          ),
          )
              : const SizedBox.shrink(
            key: ValueKey('emptySkipText'),
          ),
        ),
      ],
    );
  }

  Widget _buildImage(OnboardingViewModel viewModel) {
    return Expanded(
      child: PageView.builder(
        controller: viewModel.pageController,
        itemCount: viewModel.pages.length,
        onPageChanged: viewModel.onPageChanged,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: viewModel.pageController,
            builder: (context, child) {
              double pageOffset =
              viewModel.pageController.hasClients && viewModel.pageController.position.hasContentDimensions
                  ? viewModel.pageController.page ?? viewModel.currentIndex.toDouble()
                  : viewModel.currentIndex.toDouble();

              double delta = pageOffset - index;
              double scale = 1 - delta.abs() * 0.2;
              double yOffset = delta * 200;

              final page = viewModel.pages[index];
              return Transform.translate(
                offset: Offset(0, yOffset),
                child: Transform.scale(
                  scale: scale,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Image.asset(
                          page.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildPageIndicator(OnboardingViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(viewModel.pages.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: 48,
          height: 4,
          decoration: BoxDecoration(
            color: viewModel.currentIndex == index
                ? ProjectColors.activeIndicatorOnboarding
                : ProjectColors.disabledIndicatorOnboarding,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  Widget _buildTitle(OnboardingViewModel viewModel) {
    return DisappearanceAnimation(
      duration: const Duration(milliseconds: 600),
      child: Text(
        viewModel.pages[viewModel.currentIndex].text,
        key: ValueKey<String>(viewModel.pages[viewModel.currentIndex].text),
        style: textBigSize,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildButton(OnboardingViewModel viewModel) {
    return SimpleButtonOutlined(
      interactionColors: ProjectColors.buttonColorsYellow,
      text: viewModel.pages[viewModel.currentIndex].buttonText,
      onPressed: () =>
          viewModel.onNextPressed(
            onTapNext: () => onTapNextAndSkip(),
          ),
    );
  }
}
