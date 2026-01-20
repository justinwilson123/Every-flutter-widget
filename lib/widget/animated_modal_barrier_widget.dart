import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState extends State<AnimatedModalBarrierWidget>
    with SingleTickerProviderStateMixin {
  bool _isProssed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animatedController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );
    _animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _colorAnimation = _colorTween.animate(_animatedController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          _isProssed = true;
                        });

                        _animatedController.reset();
                        _animatedController.forward();
                        Future.delayed(const Duration(seconds: 3), () {
                          setState(() {
                            _isProssed = false;
                          });
                        });
                      },
                      child: Text("press"),
                    ),
                    if (_isProssed) _animatedModalBarrier,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
