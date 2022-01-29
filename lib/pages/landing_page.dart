// ignore_for_file: prefer_const_constructors
import '../components/normalbutton.dart';
import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NormalButton(
                  buttonText: 'Login',
                  onClickFunc: () => {Navigator.pushNamed(context, '/login')},
                ),
                NormalButton(
                    buttonText: 'Signup',
                    onClickFunc: () =>
                        {Navigator.pushNamed(context, '/signup')}),
                NormalButton(
                    buttonText: 'Continue as Guest',
                    onClickFunc: () => {
                          Navigator.pushNamed(context, '/prefs'),
                        }),
              ],
            ),
          ),
        ),
        floatingActionButton: CrisisButton(
          onClicFunc: () {
            Navigator.pushNamed(context, '/crisis');
          },
        ),
      ),
    );
  }
}
