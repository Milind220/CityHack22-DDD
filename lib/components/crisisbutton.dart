import 'package:flutter/material.dart';
import '../constants.dart';

class CrisisButton extends StatelessWidget {
  final VoidCallback onClicFunc;

  CrisisButton({required this.onClicFunc});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onClicFunc,
        backgroundColor: kSlightlyMoreAgressive,
        child: const Icon(Icons.add_alert_outlined));
  }
}
