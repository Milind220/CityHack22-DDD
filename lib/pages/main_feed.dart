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
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text('Resource Center',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              spreadRadius: 0.10,
                              blurRadius: 2,
                              offset: Offset(2, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: c_primaryColor),
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text('Progress Tracker',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              spreadRadius: 0.10,
                              blurRadius: 2,
                              offset: Offset(2, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: c_primaryColor),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
