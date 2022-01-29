import 'package:flutter/material.dart';

class PillComponent extends StatelessWidget {
  final Color PillColor;
  final String PillText;

  PillComponent({required this.PillColor, required this.PillText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: Text(PillText),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black45,
          spreadRadius: 0.10,
          blurRadius: 2,
          offset: Offset(2, 3),
        ),
      ], borderRadius: BorderRadius.circular(10), color: PillColor),
    );
  }
}
