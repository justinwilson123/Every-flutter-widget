import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();
  void _addItem() {
    _items.insert(0, "Items${_items.length}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animated) {
      return SizeTransition(
        axis: Axis.vertical,
        sizeFactor: animated,
        child: const Card(
          margin: EdgeInsets.all(10),
          child: ListTile(title: Text("Deleted")),
        ),
      );
    }, duration: const Duration(seconds: 1));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
            Expanded(
              child: AnimatedList(
                key: _key,
                initialItemCount: _items.length,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(_items[index]),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _removeItem(index),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
