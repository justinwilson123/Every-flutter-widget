import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double targetValue = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1400, end: targetValue),
          duration: Duration(milliseconds: 500),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 250 ? 100 : 250;
                });
              },
              // iconSize: size,
              icon: Icon(Icons.flutter_dash, color: Colors.orange, size: size),
            );
          },
        ),
      ),
    );
  }
}
