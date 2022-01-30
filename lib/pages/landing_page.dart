// ignore_for_file: prefer_const_constructors
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/utils/dataStore.dart';

import '../components/normalbutton.dart';
import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import '../constants.dart';
import '../components/prompt_text.dart';
import '/utils/consts.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView(
            children: [
              FirstPage(),
              CrisisModePage(),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(45.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/png_logo.png'),
                      NormalButton(
                        buttonText: 'Login',
                        onClickFunc: () =>
                            {Navigator.pushNamed(context, '/login')},
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
            ],
          ),
        ),
        floatingActionButton: CrisisButton(
          onClicFunc: () {
            loggedInUser = DataManager.instance.getUserData();
            Navigator.pushNamed(context, '/crisis');
          },
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: (Column(
          children: [
            Image.asset('assets/images/png_logo.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Center(
                child: Text(
                  'Mental health made simple.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            PromptText(
                'Welcome to ClearMynd! We are here to help you. We want to make it easy for you to access the specific mental health support you need.')
          ],
        )),
      ),
    );
  }
}

class CrisisModePage extends StatelessWidget {
  const CrisisModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
          child: Text(
            'Having a mental health crisis? ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: PromptText(
              'Press the icon in the bottom right to gain access to crisis resources that may help you!'),
        ),
        Container(
          margin: EdgeInsets.only(top: 60),
          height: 180,
          child: Image.asset('assets/images/worried_pinpan.png'),
        ),
      ],
    );
  }
}

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/png_logo.png'),
            NormalButton(
              buttonText: 'Login',
              onClickFunc: () => {Navigator.pushNamed(context, '/login')},
            ),
            NormalButton(
                buttonText: 'Signup',
                onClickFunc: () => {Navigator.pushNamed(context, '/signup')}),
            NormalButton(
                buttonText: 'Continue as Guest',
                onClickFunc: () => {
                      Navigator.pushNamed(context, '/prefs'),
                    }),
          ],
        ),
      ),
    );
  }
}
