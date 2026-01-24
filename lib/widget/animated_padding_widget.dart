import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedPadding(
            padding: isSelected
                ? EdgeInsets.symmetric(horizontal: 50, vertical: 100)
                : EdgeInsets.all(0),
            duration: const Duration(seconds: 1),
            child: const Icon(Icons.android_outlined, size: 200),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}
