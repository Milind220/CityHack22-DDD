import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/utils/dataStore.dart';
import '../components/normalbutton.dart';
import '../components/crisisbutton.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(45.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/png_logo.png'),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Name', icon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email', icon: Icon(FontAwesomeIcons.envelope)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Number', icon: Icon(FontAwesomeIcons.phone)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.password),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 75.0),
                    child: NormalButton(
                        buttonText: 'Signup',
                        onClickFunc: () {
                          loggedInUser = DataManager.instance.getUserData();
                          Navigator.pushNamed(context, '/prefs');
                        }))
              ],
            ),
          )),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}
