import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatelessWidget {
  const OrientationBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return Center(child: Text("Portrait"));
          } else {
            return Center(child: Text("LandSpace"));
          }
        },
      ),
    );
  }
}
