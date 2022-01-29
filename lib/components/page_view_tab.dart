import 'package:flutter/material.dart';

class PageViewTab extends StatelessWidget {
  final List<Widget> children;

  PageViewTab({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
