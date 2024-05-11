import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:z_chat/features/authentication/views/welcome_view.dart';

part 'routes.g.dart';

@TypedGoRoute<WelcomeViewRoute>(
  path: '/',
  routes: [],
)
@immutable
class WelcomeViewRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WelcomeView();
  }
}
