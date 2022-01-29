import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import '../components/doctorlisttile.dart';

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: DoctorListTile(),
            ),
          ],
        ),
      ),
    );
  }
}
