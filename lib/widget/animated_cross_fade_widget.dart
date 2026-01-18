import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Image.asset(
              "images/personimage.png",
              height: 300,
              width: double.infinity,
            ),
            secondChild: Image.asset(
              "images/mobiles23ultra.jpg",
              height: 300,
              width: double.infinity,
            ),
            crossFadeState: isSelected
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text("Change"),
          ),
        ],
      ),
    );
  }
}
