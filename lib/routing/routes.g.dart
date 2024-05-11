// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $welcomeViewRoute,
    ];

RouteBase get $welcomeViewRoute => GoRouteData.$route(
      path: '/',
      factory: $WelcomeViewRouteExtension._fromState,
    );

extension $WelcomeViewRouteExtension on WelcomeViewRoute {
  static WelcomeViewRoute _fromState(GoRouterState state) => WelcomeViewRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
