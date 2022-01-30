import 'package:flutter/material.dart';
import 'package:sampleapp/backend/recommendation_profile.dart';
import 'package:sampleapp/components/drop_down.dart';
import 'package:sampleapp/components/page_view_tab.dart';
import 'package:sampleapp/components/crisisbutton.dart';
import 'package:sampleapp/components/normalbutton.dart';
import 'package:sampleapp/components/prompt_text.dart';
import 'package:sampleapp/utils/consts.dart';
import '../constants.dart';

class PreferenceScreen extends StatelessWidget {
  // int providerType = -1;
  // int consultationType = -1;
  // int language = -1;
  // int costBracket = -1;
  // int ageGroup = -1;
  // int treatmentType = -1;
  // List<int> values = [];

  @override
  Widget build(BuildContext context) {
    PageController? pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    void onStartPreferences() {
      pageController.animateToPage(1,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            FirstTab(onClick: onStartPreferences),
            ProviderTypeTab(),
            FurtherQuestionsTab(),
            ValuesTab(),
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
  FirstTab({Key? key, required this.onClick}) : super(key: key);

  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset('assets/images/pinpan_head.png'),
              Text(
                'Are you ready to input your preferences now?',
                style: kPromptText,
                textAlign: TextAlign.center,
              ),
              NormalButton(
                  buttonText: 'Yes, I\'m Ready!', onClickFunc: onClick),
              OutlinedButton(
                style: OutlinedButton.styleFrom(primary: kMaxBlueGreenColour),
                onPressed: () => {Navigator.pushNamed(context, '/feed')},
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageViewTab(
          children: [
            PromptText('Are you ready to input your preferences now?'),
            NormalButton(
              buttonText: 'Psychiatrist',
              onClickFunc: () => {},
              color: kMaxBlueGreenColour,
            ),
            NormalButton(buttonText: 'Psychologist', onClickFunc: () => {}),
            NormalButton(buttonText: 'Support Group', onClickFunc: () => {}),
            NormalButton(buttonText: 'Not Sure', onClickFunc: () => {}),
            Image.asset('assets/images/pinpan_walk.png')
          ],
        ),
      ],
    );
  }
}

class FurtherQuestionsTab extends StatelessWidget {
  const FurtherQuestionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.center,
          child: PageViewTab(
            children: [
              PromptText('How would prefer sessions to be delivered?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: 'In-Person',
                      onClickFunc: () => {},
                      color: kMaxBlueGreenColour,
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
                      buttonText: 'Either',
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
                      buttonText: 'Public',
                      onClickFunc: () => {},
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: 'Private',
                      onClickFunc: () => {},
                      color: kMaxBlueGreenColour,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: 'Private Subsidised',
                      onClickFunc: () => {},
                    ),
                  ),
                ],
              ),
              PromptText('Prefered Age Group:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: '20 - 30',
                      onClickFunc: () => {},
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: '30 - 50',
                      onClickFunc: () => {},
                      color: kMaxBlueGreenColour,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: NormalButton(
                      buttonText: '50+',
                      onClickFunc: () => {},
                    ),
                  ),
                ],
              ),
              PromptText('Treatment Type:'),
              DropDownList(
                options: [
                  'Not Sure',
                  'Cognitive Behavioural Therapy',
                  'Psychodynamic Therapy',
                  'Humanistic Therapy',
                  'Psychoanalytic therapy',
                  'Holistic Therapy',
                  'Couples Therapy',
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ValuesTab extends StatelessWidget {
  // final values = [
  //   'LGBTQ',
  //   'Religion',
  //   'Youth Services',
  //   'Addiction',
  //   'Abuse',
  //   'Mental Disorder',
  //   'Alternative Treatment',
  // ];

  @override
  Widget build(BuildContext context) {
    final values = Value.values.map((x) => valToString(x));

    // for demo

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: [
              PromptText(
                  'I would prefer if my doctor has experience with or values...'),
              Wrap(
                children: values.map((
                  item,
                ) {
                  Color? col;

                  switch (item) {
                    case 'LGBTQ':
                    case 'Mental Disorder':
                    case 'Depression':
                      col = kMaxBlueGreenColour;
                      break;
                    default:
                      break;
                  }
                  return Container(
                    margin: EdgeInsets.only(left: 7.0),
                    child: Chip(
                      label: Text(item),
                      backgroundColor: col == null
                          ? kMiddleBlueGreenColour
                          : kMaxBlueGreenColour,
                    ),
                  );
                }).toList(),
              ),
              Container(
                height: 260,
                child: Image.asset('assets/images/pinpan.png'),
              ),
              NormalButton(
                buttonText: 'Done',
                onClickFunc: () => {Navigator.pushNamed(context, '/feed')},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
