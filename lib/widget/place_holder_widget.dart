import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  const PlaceHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Placeholder(
            fallbackHeight: 300,
            fallbackWidth: 100,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
