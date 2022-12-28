import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow(this.buttons, {Key? key}) : super(key: key);

  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, button) {
          list.isEmpty
              ? list.add(button)
              : list.addAll([
                  const SizedBox(
                    width: 1,
                  ),
                  button
                ]);
          return list;
        }),
      ),
    );
  }
}
