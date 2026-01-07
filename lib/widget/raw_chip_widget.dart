import 'package:flutter/material.dart';

ValueNotifier<bool> isSelected = ValueNotifier(false);

class RawChipWidget extends StatelessWidget {
  const RawChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          // child: FlutterLogo(size: 50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder(
              valueListenable: isSelected,
              builder: (BuildContext context, bool value, Widget? child) {
                return RawChip(
                  label: Text("Row chip"),
                  avatar: Icon(Icons.person),
                  deleteIcon: Icon(Icons.remove_circle),
                  selectedColor: Colors.redAccent,
                  selected: value,
                  onDeleted: () {},
                  onPressed: () {
                    isSelected.value = !value;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
