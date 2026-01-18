import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AboutListTile(
          applicationName: "About List Tile",
          applicationVersion: "1.0.0",
          applicationIcon: Icon(Icons.info),
          applicationLegalese: "All rights reserved",
          aboutBoxChildren: [Text("This is a text created by me")],
        ),
      ),
    );
  }
}
