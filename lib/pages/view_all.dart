import 'package:flutter/material.dart';
import 'package:sampleapp/backend/recommendation_profile.dart';
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

    List<String> valueString = Value.values.map((e) => valToString(e)).toList();
    return Scaffold(
      body: ListView(
        children: [
          Container(
              //color: Colors.red,
              margin: EdgeInsets.all(9),
              height: 100,
              child: Image.asset('assets/images/pinpan_thinhead.png')),
          DoctorListTile(
            valueList: valueString,
            valueIndex: [0, 4, 3, 2, 1, 5],
            docName: 'Dr. Mike Chambers',
            docBlurb: 'Psychiatrist; Oxford',
            picPath: doctorpics[0],
          ),
          DoctorListTile(
            valueList: valueString,
            valueIndex: [1, 2, 3, 4, 5, 0],
            docName: 'Dr. Frederick Knowles',
            docBlurb: 'Psychiatrist; Cambridge',
            picPath: doctorpics[1],
          ),
          DoctorListTile(
            valueList: valueString,
            valueIndex: [5, 4, 3, 2, 1, 0],
            docName: 'Dr. Bharad Rajosh',
            docBlurb: 'Psychiatrist; HKU',
            picPath: doctorpics[2],
          ),
          DoctorListTile(
            valueList: valueString,
            valueIndex: [0, 3, 2, 4, 5, 1],
            docName: 'Dr. Gimmie Zimmerwoman',
            docBlurb: 'Psychiatrist; CUHK',
            picPath: doctorpics[3],
          ),
          DoctorListTile(
            valueList: valueString,
            valueIndex: [5, 2, 4, 3, 1, 0],
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
