// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:pet_project/ui/home/nav_bar/home_button_nav_bar_view.dart' as _i1;
import 'package:pet_project/ui/home/home_view.dart' as _i2;
import 'package:pet_project/ui/onboarding/onboarding_view.dart' as _i3;
import 'package:pet_project/ui/splash/splash_view.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeButtonNavBarViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeButtonNavBarViewPage(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeViewPage(),
      );
    },
    OnboardingViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingViewPage(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashViewPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeButtonNavBarViewPage]
class HomeButtonNavBarViewRoute extends _i5.PageRouteInfo<void> {
  const HomeButtonNavBarViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeButtonNavBarViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeButtonNavBarViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeViewPage]
class HomeViewRoute extends _i5.PageRouteInfo<void> {
  const HomeViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnboardingViewPage]
class OnboardingViewRoute extends _i5.PageRouteInfo<void> {
  const OnboardingViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashViewPage]
class SplashViewRoute extends _i5.PageRouteInfo<void> {
  const SplashViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
