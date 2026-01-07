import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.green,
            child: Center(child: FlutterLogo(size: 100)),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: FlutterLogo(size: 100)),
          ),
          Container(
            color: Colors.red,
            child: Center(child: FlutterLogo(size: 100)),
          ),
        ],
      ),
    );
  }
}
