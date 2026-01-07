import 'dart:isolate';

import 'package:flutter/material.dart';

class SliderTansitionWidget extends StatefulWidget {
  const SliderTansitionWidget({super.key});

  @override
  State<SliderTansitionWidget> createState() => _SliderTansitionWidgetState();
}

class _SliderTansitionWidgetState extends State<SliderTansitionWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0, 1.5),
  ).animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    for (int i = 0; i < 10000; i++) {
                      print(i);
                    }
                  },
                  child: Text("Not Isolate"),
                ),
                TextButton(
                  onPressed: () async {
                    await Isolate.run(() {
                      int count = 0;
                      for (int i = 0; i < 10000; i++) {
                        count++;
                        print(count);
                      }
                    });
                  },
                  child: Text("fake Isolate"),
                ),
                TextButton(
                  onPressed: () async {
                    ReceivePort receivePort = ReceivePort();
                    Isolate.spawn(realTask, receivePort.sendPort);

                    receivePort.listen((result) {
                      print("انتهى: $result");
                    });
                  },
                  child: Text("real Isolate"),
                ),
              ],
            ),
            Center(
              child: SlideTransition(
                position: _offsetAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: FlutterLogo(size: 200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void realTask(SendPort sendPort) {
  for (int i = 0; i < 10000; i++) {
    print(i);
  }
  sendPort.send("تم الانتهاء");
}
