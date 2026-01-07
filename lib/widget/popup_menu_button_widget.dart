import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  String title = "First Item";
  String item1 = "First Item";
  String item2 = "second Item";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListTile(
          title: Text(title),
          trailing: PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text(item1), value: item1),
                PopupMenuItem(child: Text(item2), value: item2),
              ];
            },
            onSelected: (value) {
              setState(() {
                title = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
