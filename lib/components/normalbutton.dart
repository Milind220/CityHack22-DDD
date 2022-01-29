//import 'dart:html';

import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  //const NormalButton({Key? key}) : super(key: key);

  final String buttonText;
  final VoidCallback onClickFunc;

  NormalButton({required this.buttonText, required this.onClickFunc});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(onPressed: onClickFunc, child: Text(buttonText)));
  }
}
