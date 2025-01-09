import 'package:auto_route/auto_route.dart';
import 'package:pet_project/routing/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashViewRoute.page, initial: true),
        AutoRoute(page: HomeViewRoute.page),
        AutoRoute(page: OnboardingViewRoute.page),
  ];
}
