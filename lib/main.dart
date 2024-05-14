import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:z_chat/routing/routes.dart';

void main() {
  runApp(const ZChat());
}

class ZChat extends StatelessWidget {
  const ZChat({super.key});

  static final _router = GoRouter(routes: $appRoutes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ZChat Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
