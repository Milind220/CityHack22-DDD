import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sampleapp/components/crisisbutton.dart';
import 'package:sampleapp/components/normalbutton.dart';
import 'package:sampleapp/utils/consts.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          FirstTab(),
        ],
      )),
      floatingActionButton: CrisisButton(
        onClicFunc: () {
          Navigator.pushNamed(context, '/crisis');
        },
      ),
    );
  }
}

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Are you ready to input your preferences now?',
                style: c_PromptText,
                textAlign: TextAlign.center,
              ),
              NormalButton(
                  buttonText: 'Yes, Let\'s GOOOOOO', onClickFunc: () => {}),
              OutlinedButton(
                onPressed: () => {},
                child: Text('Not sure for now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
