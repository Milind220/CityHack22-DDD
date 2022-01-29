import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import '../components/doctorlisttile.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
        ],
      ),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}
