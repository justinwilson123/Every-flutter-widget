import 'package:flutter/material.dart';

class RotedBoxWidget extends StatelessWidget {
  const RotedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(quarterTurns: 4, child: FlutterLogo(size: 150)),
      ),
    );
  }
}
