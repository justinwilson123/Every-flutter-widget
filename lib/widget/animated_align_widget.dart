import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool isSelcted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        alignment: isSelcted ? Alignment.bottomRight : Alignment.topLeft,
        duration: Duration(seconds: 1),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelcted = !isSelcted;
            });
          },
          child: Container(height: 200, width: 200, color: Colors.red),
        ),
      ),
    );
  }
}
