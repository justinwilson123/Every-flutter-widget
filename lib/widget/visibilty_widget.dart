import 'package:flutter/material.dart';

ValueNotifier<bool> visibilty = ValueNotifier(false);

class VisibiltyWidget extends StatelessWidget {
  const VisibiltyWidget({super.key});

  // bool visibilty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                visibilty.value = !visibilty.value;
              },
              child: Text("show/hide"),
            ),

            // Image.asset("images/onboarding1.PNG", width: 300),
            SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: visibilty,
              builder: (BuildContext context, bool value, Widget? child) {
                return Visibility(
                  visible: value,
                  child: Image.asset("images/onboarding2.PNG", width: 300),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
