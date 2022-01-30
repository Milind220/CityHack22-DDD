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
          DoctorListTile(
            docName: 'Dr. Mike Chambers',
            docBlurb: 'Psychiatrist; Oxford',
            picPath: doctorpics[0],
          ),
          DoctorListTile(
            docName: 'Dr. Frederick Knowles',
            docBlurb: 'Psychiatrist; Cambridge',
            picPath: doctorpics[1],
          ),
          DoctorListTile(
            docName: 'Dr. Bharad Rajosh',
            docBlurb: 'Psychiatrist; HKU',
            picPath: doctorpics[2],
          ),
          DoctorListTile(
            docName: 'Dr. Gimmie Zimmerwoman',
            docBlurb: 'Psychiatrist; CUHK',
            picPath: doctorpics[3],
          ),
          DoctorListTile(
            docName: 'Dr. Leo Fridjeoff',
            docBlurb: 'Psychiatrist; NUST',
            picPath: doctorpics[4],
          ),
          //DoctorListTile(docName: 'Dr. Milind Sharma'),
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
