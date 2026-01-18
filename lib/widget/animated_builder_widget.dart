import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  // final ScrollController _scroll = ScrollController();
  // final PageController _page = PageController();
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: FlutterLogo(size: 300),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              origin: Offset.zero,
              angle: _controller.value * 2 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
