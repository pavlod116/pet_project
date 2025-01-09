import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pet_project/routing/router.gr.dart';
import 'package:pet_project/ui/splash/splash_view_model.dart';
import 'package:pet_project/ui/style/colors.dart';
import 'package:provider/provider.dart';

const String _imageLogo = 'assets/image/logo.png';
const String _imageNameCompany = 'assets/image/name_company.png';
const double _sizeImageLogo = 140;

@RoutePage()
class SplashViewPage extends StatefulWidget {
  const SplashViewPage({super.key});

  @override
  State<SplashViewPage> createState() => _SplashViewPageState();
}

class _SplashViewPageState extends State<SplashViewPage> {
  @override
  void initState() {
    super.initState();
    final splashModel = Provider.of<SplashViewModel>(context, listen: false);
    splashModel.startAnimation(
      context: context,
      onSuccess: () => context.router.replaceAll([const HomeViewRoute()]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final splashModel = Provider.of<SplashViewModel>(context);

    return Scaffold(
      backgroundColor: ProjectColors.background,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: splashModel.isLogoVisible
                  ? ClipRRect(
                      key: const ValueKey('logo'),
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(_imageLogo, height: _sizeImageLogo, width: _sizeImageLogo),
                    )
                  : ClipRRect(
                      key: const ValueKey('companyName'),
                      child: Image.asset(_imageNameCompany, width: 175, height: 64),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
