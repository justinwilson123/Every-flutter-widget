import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool _isflat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            AnimatedPhysicalModel(
              elevation: _isflat ? 0 : 10,
              curve: Curves.fastOutSlowIn,
              shape: BoxShape.rectangle,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: const Duration(seconds: 1),
              child: Icon(Icons.android_outlined, size: 200),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isflat = !_isflat;
                });
              },
              child: Text("click"),
            ),
          ],
        ),
      ),
    );
  }
}
