import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatelessWidget {
  const ShaderMaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return RadialGradient(
                center: Alignment.topRight,
                radius: 4.0,
                colors: [Colors.orange, Colors.red],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            child: Text(
              "This is a cool looking text",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
