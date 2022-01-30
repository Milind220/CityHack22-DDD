import 'package:flutter/material.dart';
import 'package:sampleapp/utils/consts.dart';

class PromptText extends StatelessWidget {
  final String _text;

  const PromptText(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: kPromptText,
      textAlign: TextAlign.center,
    );
  }
}
