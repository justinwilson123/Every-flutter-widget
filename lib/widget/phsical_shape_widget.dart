import 'package:flutter/material.dart';

class PhsicalShapeWidget extends StatelessWidget {
  const PhsicalShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalShape(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          color: Colors.red,
          elevation: 20,
          child: SizedBox(height: 100, width: 100),
        ),
      ),
    );
  }
}
