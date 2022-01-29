import 'package:flutter/material.dart';
import 'package:sampleapp/utils/consts.dart';
import '../components/crisisbutton.dart';
import '../components/doctorlisttile.dart';

class MainFeedScreen extends StatelessWidget {
  const MainFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40, top: 15),
                      child: OutlinedButton(
                          onPressed: () => {
                                Navigator.pushNamed(context, '/feed'),
                              },
                          child: Text('Resource Center')),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40, top: 15),
                      child: OutlinedButton(
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
                        child: DoctorListTile(),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child: DoctorListTile(),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child: DoctorListTile(),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child: DoctorListTile(),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                      GestureDetector(
                        child: DoctorListTile(),
                        onTap: () => {
                          Navigator.pushNamed(context, '/docprofile'),
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: 300,
                  child: Text(
                    'Review your recent visit with Dr. Nazir',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 0.5,
                          blurRadius: 7.5,
                          offset: Offset(2, 3),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
