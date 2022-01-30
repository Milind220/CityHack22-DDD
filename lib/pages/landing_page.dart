// ignore_for_file: prefer_const_constructors
import 'package:sampleapp/backend/data_manager.dart';
import 'package:sampleapp/utils/dataStore.dart';

import '../components/normalbutton.dart';
import 'package:flutter/material.dart';
import '../components/crisisbutton.dart';
import '../constants.dart';
import '../components/prompt_text.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: (Column(
        children: [
          Image.asset('assets/images/png_logo.png'),
          PromptText(
              'Welcome to ClearMynd! We are here to help you. We want to make it easier for you to gain access to the specific mental health support you are looking for by giving you access to which practioners are availible to you, and which might be the best match for you.')
        ],
      )),
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: PromptText(
              'If you are having a mental health crisis press the icon in the bottom right in order to gain access to crisis resources that may help'),
        ),
        Container(
            margin: EdgeInsets.only(top: 60),
            height: 80,
            child: Image.asset('assets/images/worried_pinpan.png')),
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
