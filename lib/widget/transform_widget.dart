import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          transform: Matrix4.rotationX(pi * 2 / 3),
          alignment: Alignment.center,
          child: Image.asset("images/onboarding1.PNG", height: 300, width: 300),
        ),
      ),
    );
  }
}
