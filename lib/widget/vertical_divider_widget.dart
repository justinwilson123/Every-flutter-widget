import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Text("hia fla  al"),
          VerticalDivider(),
          Text(" alfkd  alf a alf"),
        ],
      ),
    );
  }
}
