import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _aniCtrl;
  late Animation _ani;

  @override
  void initState() {
    super.initState();

    _aniCtrl = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )
      ..forward()
      ..repeat(reverse: true);

    _ani = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(_aniCtrl);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ani,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: _ani.value,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('Welcome View'),
          ),
          body: child,
        );
      },
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
            ),
          ],
        ),
      ),
    );
  }
}
