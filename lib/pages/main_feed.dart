import 'package:flutter/material.dart';
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/backend/recommendation_system.dart';
import 'package:sampleapp/utils/consts.dart';
import 'package:sampleapp/utils/dataStore.dart';
import '../components/crisisbutton.dart';
import '../components/doctorlisttile.dart';
import '../constants.dart';

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    allHealthcareProviders = DataManager.instance.getAllDoctors();
    var results = RecommendationSystem.instance
        .getTopRecommendations(loggedInUser!, allHealthcareProviders, 5);

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
            alignment: Alignment.center,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    //color: Colors.red,
                    margin: EdgeInsets.all(0),
                    height: 100,
                    child: Image.asset('assets/images/pinpan_thinhead.png')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40, top: 15),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: kMaxBlueGreenColour),
                          onPressed: () => {
                                Navigator.pushNamed(context, '/feed'),
                              },
                          child: Text('Resource Center')),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40, top: 15),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: kMaxBlueGreenColour),
                          onPressed: () => {
                                Navigator.pushNamed(context, '/feed'),
                              },
                          child: Text('Progress Tracker')),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        child:
                            DoctorListTile(docName: results[0].provider.name),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child:
                            DoctorListTile(docName: results[1].provider.name),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child:
                            DoctorListTile(docName: results[2].provider.name),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child:
                            DoctorListTile(docName: results[3].provider.name),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child:
                            DoctorListTile(docName: results[4].provider.name),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: OutlinedButton(
                    style:
                        OutlinedButton.styleFrom(primary: kMaxBlueGreenColour),
                    onPressed: () => {null},

                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Review your recent visit with Dr. Nazir',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //margin: EdgeInsets.only(bottom: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kMiddleBlueColour),
                    onPressed: () => {Navigator.pushNamed(context, '/viewall')},
                    child: Text(
                      'View More',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Image.asset('assets/images/pinpan.png'),
              ],
            ),
          ),
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
