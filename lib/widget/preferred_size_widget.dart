import 'package:flutter/material.dart';

class PreferredSizeWidgetText extends StatelessWidget {
  const PreferredSizeWidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
                Colors.greenAccent,
              ],
            ),
          ),
        ),
      ),
      body: Center(child: FlutterLogo(size: 140)),
    );
  }
}
