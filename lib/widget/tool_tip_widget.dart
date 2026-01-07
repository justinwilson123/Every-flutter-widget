import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Tooltip(
          message: "this is an image",
          child: Image.asset("images/onboarding1.PNG"),
        ),
      ),
    );
  }
}
