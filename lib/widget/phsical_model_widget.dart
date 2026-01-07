import 'package:flutter/material.dart';

class PhsicalModelWidget extends StatelessWidget {
  const PhsicalModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalModel(
          color: Colors.orange,
          shadowColor: Colors.red,
          elevation: 20,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(child: Icon(Icons.flutter_dash, size: 100)),
          ),
        ),
      ),
    );
  }
}
