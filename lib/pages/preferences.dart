import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sampleapp/components/drop_down.dart';
import 'package:sampleapp/components/page_view_tab.dart';
import 'package:sampleapp/components/crisisbutton.dart';
import 'package:sampleapp/components/normalbutton.dart';
import 'package:sampleapp/components/prompt_text.dart';
import 'package:sampleapp/utils/consts.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            FirstTab(),
            ProviderTypeTab(),
            FurtherQuestionsTab(),
          ],
        ),
      ),
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

class ProviderTypeTab extends StatelessWidget {
  const ProviderTypeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageViewTab(
      children: [
        PromptText('Are you ready to input your preferences now?'),
        NormalButton(buttonText: 'Psychiatrist', onClickFunc: () => {}),
        NormalButton(buttonText: 'Psychologist', onClickFunc: () => {}),
        NormalButton(buttonText: 'Support Group', onClickFunc: () => {}),
        NormalButton(buttonText: 'Not Sure', onClickFunc: () => {}),
      ],
    );
  }
}

class FurtherQuestionsTab extends StatelessWidget {
  const FurtherQuestionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageViewTab(
      children: [
        PromptText('How would prefer sessions to be delivered?'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
          ],
        ),
        PromptText('What is your preferred cost/pricing bracket?'),
        DropDownList(
          options: <String>['English', 'Cantonese', 'Mandarin'],
        ),
        PromptText('What is your preferred cost/pricing bracket?'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
          ],
        ),
        PromptText('Age group?'),
        DropDownList(
          options: ['20 - 30', '30 - 50', '50+'],
        ),
        PromptText('Treatment type:'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: NormalButton(
                buttonText: 'Virtual',
                onClickFunc: () => {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ValuesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
