import 'package:flutter/material.dart';

List<Widget> widgets = [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TabBarSelectorWidget extends StatefulWidget {
  const TabBarSelectorWidget({super.key});

  @override
  State<TabBarSelectorWidget> createState() => _TabBarSelectorWidgetState();
}

class _TabBarSelectorWidgetState extends State<TabBarSelectorWidget>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;
  @override
  void initState() {
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          TabBarView(controller: controller, children: widgets),
          Positioned(
            bottom: 100,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
          Positioned(
            bottom: 20,
            child: IconButton(
              onPressed: () {
                (_index != widgets.length - 1) ? _index++ : _index = 0;
                controller.animateTo(_index);
              },
              icon: Icon(Icons.navigate_next),
            ),
          ),
        ],
      ),
      floatingActionButton: OverflowBar(
        spacing: 10,
        overflowDirection: VerticalDirection.down,
        overflowAlignment: OverflowBarAlignment.end,
        // alignment: MainAxisAlignment.,
        children: [
          FloatingActionButton(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
