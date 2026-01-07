import 'package:flutter/material.dart';

class ScrollBarWidget extends StatefulWidget {
  const ScrollBarWidget({super.key});

  @override
  State<ScrollBarWidget> createState() => _ScrollBarWidgetState();
}

class _ScrollBarWidgetState extends State<ScrollBarWidget> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        // thumbVisibility: true,
        trackVisibility: true,
        thickness: 10,
        controller: scrollController,
        child: ListView.builder(
          controller: scrollController,
          itemCount: 40,
          itemBuilder: (context, i) {
            return ListTile(title: Text("item $i"));
          },
        ),
      ),
    );
  }
}
