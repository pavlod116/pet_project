// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:pet_project/ui/home/home_view.dart' as _i1;
import 'package:pet_project/ui/onboarding/onboarding_view.dart' as _i2;
import 'package:pet_project/ui/splash/splash_view.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeViewPage(),
      );
    },
    OnboardingViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingViewPage(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashViewPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeViewPage]
class HomeViewRoute extends _i4.PageRouteInfo<void> {
  const HomeViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnboardingViewPage]
class OnboardingViewRoute extends _i4.PageRouteInfo<void> {
  const OnboardingViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OnboardingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashViewPage]
class SplashViewRoute extends _i4.PageRouteInfo<void> {
  const SplashViewRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashViewRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
