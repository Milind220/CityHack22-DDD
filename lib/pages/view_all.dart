import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import '../components/doctorlisttile.dart';
//import 'package:flutter/material.dart';
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/backend/recommendation_system.dart';
//import 'package:sampleapp/utils/consts.dart';
import 'package:sampleapp/utils/dataStore.dart';
//import '../components/crisisbutton.dart';
//import '../components/doctorlisttile.dart';
//import '../constants.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({Key? key}) : super(key: key);

  @override
  //commendations(loggedInUser!, allHealthcareProviders, 5);
  Widget build(BuildContext context) {
    List<String> doctorpics = [
      'assets/images/Doc1.jpeg',
      'assets/images/Doc2.jpeg',
      'assets/images/Doc3.jpeg',
      'assets/images/Doc4.jpeg',
      'assets/images/Doc5.jpeg',
      'assets/images/ladypic.jpg'
    ];
    return Scaffold(
      body: ListView(
        children: [
          Container(
              //color: Colors.red,
              margin: EdgeInsets.all(9),
              height: 100,
              child: Image.asset('assets/images/pinpan_thinhead.png')),
          DoctorListTile(docName: 'Dr. Mike Chambers'),
          DoctorListTile(docName: 'Dr. Frederick Knowles'),
          DoctorListTile(docName: 'Dr. Bharad Rajosh'),
          DoctorListTile(docName: 'Dr. Gimmie Zimmerwoman'),
          DoctorListTile(docName: 'Dr. Leo Fridjeoff'),
          DoctorListTile(docName: 'Dr. Milind Sharma'),
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
