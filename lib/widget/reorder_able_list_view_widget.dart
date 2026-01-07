import 'package:flutter/material.dart';

class ReorderAbleListViewWidget extends StatefulWidget {
  const ReorderAbleListViewWidget({super.key});

  @override
  State<ReorderAbleListViewWidget> createState() =>
      _ReorderAbleListViewWidgetState();
}

class _ReorderAbleListViewWidgetState extends State<ReorderAbleListViewWidget> {
  final List<int> items = List.generate(100, (i) => i);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            // if (oldIndex < newIndex) {
            //   newIndex -= 2;
            // }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          },
          children: List.generate(
            items.length,
            (i) => ListTile(key: Key("$i"), title: Text("Item $i")),
          ),
        ),
      ),
    );
  }
}
