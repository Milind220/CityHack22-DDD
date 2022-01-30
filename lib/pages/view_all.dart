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
          Container(
              //color: Colors.red,
              margin: EdgeInsets.all(9),
              height: 100,
              child: Image.asset('assets/images/pinpan_thinhead.png')),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          DoctorListTile(),
          Image.asset('assets/images/pinpan.png'),
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
