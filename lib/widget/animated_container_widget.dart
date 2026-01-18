import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            width: isSelected ? 300 : 200,
            height: isSelected ? 300 : 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  isSelected ? Colors.white : Colors.red,
                  isSelected ? Colors.black : Colors.green,
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text("Change container"),
          ),
        ],
      ),
    );
  }
}
