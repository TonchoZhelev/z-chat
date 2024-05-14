import 'package:flutter/material.dart';
import 'package:z_chat/constants/assets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: 'logo',
      child: Image(
        image: Assets.logoRaster,
      ),
    );
  }
}
