import 'package:flutter/material.dart';

class OverFlowBoxWidget extends StatelessWidget {
  const OverFlowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,
          child: OverflowBox(
            maxWidth: 300,
            maxHeight: 300,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red.withValues(alpha: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
