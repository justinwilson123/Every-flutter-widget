import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  bool isPlay = false;
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 1),
    vsync: this,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (!isPlay) {
              _controller.forward();
              isPlay = true;
            } else {
              _controller.reverse();
              isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
