import 'package:flutter/material.dart';

class RawAutoCompleteWidget extends StatelessWidget {
  const RawAutoCompleteWidget({super.key});

  static const List<String> theList = [
    "venusar",
    "blastaise",
    "charixard",
    "hoag a f",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RawAutocomplete(
          optionsViewBuilder:
              (
                BuildContext context,
                AutocompleteOnSelected<String> onSelect,
                Iterable<String> opitons,
              ) {
                return Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Material(
                      elevation: 4.0,
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: opitons.length,
                          itemBuilder: (context, i) {
                            final String option = opitons.elementAt(i);
                            return GestureDetector(
                              onTap: () {
                                onSelect(option);
                              },
                              child: ListTile(title: Text(option)),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
          optionsBuilder: (TextEditingValue textEditingValue) {
            return theList.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          fieldViewBuilder:
              (context, textEditingController, focusNode, onFieldSubmitted) {
                return Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    onFieldSubmitted: (String value) {
                      onFieldSubmitted();
                    },
                  ),
                );
              },
        ),
      ),
    );
  }
}
