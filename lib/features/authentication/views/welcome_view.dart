import 'package:animated_text_kit/animated_text_kit.dart';
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Expanded(
                  child: Image(
                    image: AssetImage('assets/icon.png'),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: AspectRatio(
                    aspectRatio: 4.8,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Chat',
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                            speed: const Duration(milliseconds: 300),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    width: 1,
                    height: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
