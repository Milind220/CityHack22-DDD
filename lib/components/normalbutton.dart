//import 'dart:html';
import '../constants.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  //const NormalButton({Key? key}) : super(key: key);

  final String buttonText;
  final VoidCallback onClickFunc;
  final Color? color;

  NormalButton(
      {required this.buttonText, required this.onClickFunc, this.color});
  @override
  Widget build(BuildContext context) {
    Color usingColor = color == null ? kMiddleBlueColour : color!;

    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onClickFunc,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(primary: usingColor),
      ),
    );
  }
}
