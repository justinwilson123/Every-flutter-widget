import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("close"),
                    ),
                  ],
                  title: Text("Flutter"),
                  contentPadding: const EdgeInsets.all(20),
                  content: Text("this is alert dialog widget"),
                );
              },
            );
          },
          child: Text("show alert dialog"),
        ),
      ),
    );
  }
}
