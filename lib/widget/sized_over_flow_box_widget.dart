import 'package:flutter/material.dart';

class SizedOverFlowBoxWidget extends StatelessWidget {
  const SizedOverFlowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.orange,
          child: SizedOverflowBox(
            size: Size(100, 100),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("this is button"),
            ),
          ),
        ),
      ),
    );
  }
}
