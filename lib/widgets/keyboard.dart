import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  const Keyboard({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 500,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ButtonRow(
            [
              Button.big(
                text: 'AC',
                callback: callback,
                color: Button.darkColor,
              ),
              Button(
                text: '%',
                callback: callback,
                color: Button.darkColor,
              ),
              Button.operation(
                text: '/',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            [
              Button(
                text: '7',
                callback: callback,
              ),
              Button(
                text: '8',
                callback: callback,
              ),
              Button(
                text: '9',
                callback: callback,
              ),
              Button.operation(
                text: 'x',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            [
              Button(
                text: '4',
                callback: callback,
              ),
              Button(
                text: '5',
                callback: callback,
              ),
              Button(
                text: '6',
                callback: callback,
              ),
              Button.operation(
                text: '-',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            [
              Button(
                text: '1',
                callback: callback,
              ),
              Button(
                text: '2',
                callback: callback,
              ),
              Button(
                text: '3',
                callback: callback,
              ),
              Button.operation(
                text: '+',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          ButtonRow(
            [
              Button.big(
                text: '0',
                callback: callback,
              ),
              Button(
                text: '.',
                callback: callback,
              ),
              Button.operation(
                text: '=',
                callback: callback,
              ),
            ],
          )
        ],
      ),
    );
  }
}
