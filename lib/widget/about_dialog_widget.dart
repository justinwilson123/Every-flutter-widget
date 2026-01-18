import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AboutDialog(
                    applicationName: "About Dialog",
                    applicationVersion: "1.0.0",
                    applicationIcon: FlutterLogo(size: 100),
                    children: [Text("About Dialog")],
                  );
                },
              );
            },
            child: Text("About Dialog"),
          ),
        ),
      ),
    );
  }
}
