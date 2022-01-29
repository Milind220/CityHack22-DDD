import 'package:flutter/material.dart';

class CrisisButton extends StatelessWidget {
  final VoidCallback onClicFunc;

  CrisisButton({required this.onClicFunc});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onClicFunc,
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_alert_outlined));
  }
}
