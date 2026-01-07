import 'package:flutter/material.dart';

ValueNotifier<int> number = ValueNotifier(0);

class ValueListenableBuilderWidget extends StatelessWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  number.value++;
                },
                icon: Icon(Icons.add, size: 25),
              ),
              SizedBox(height: 30),
              ValueListenableBuilder<int>(
                valueListenable: number,
                builder: (context, int value, child) {
                  return Text("$value");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
