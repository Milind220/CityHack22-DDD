import 'package:flutter/material.dart';
import 'package:sampleapp/constants.dart';

class CircleProfilePicture extends StatelessWidget {
  final double innerRadius;
  final double borderThickness;
  final String imgUrl;

  CircleProfilePicture({
    Key? key,
    this.innerRadius = 25.0,
    this.borderThickness = 1,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kGlaucousColour,
      radius: innerRadius + borderThickness,
      child: CircleAvatar(
        radius: innerRadius,
        backgroundImage: AssetImage(imgUrl),
      ),
    );
  }
}
