import 'package:flutter/material.dart';

class OverFlowBarWidget extends StatelessWidget {
  const OverFlowBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: OverflowBar(
            spacing: 10,
            overflowSpacing: 10,
            children: List.generate(30, (i) {
              return Container(
                width: 100,
                height: 100,
                color: i.isEven ? Colors.red : Colors.blue,
              );
            }),
          ),
        ),
      ),
    );
  }
}
