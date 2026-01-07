import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SelectableText(
          showCursor: true,
          "this text is selectable text ",
          style: TextStyle(fontSize: 30, color: Colors.blueAccent),
          onSelectionChanged: (selection, cause) => {
            print(selection),
            print(cause),
          },
        ),
      ),
    );
  }
}
