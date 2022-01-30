import 'package:flutter/material.dart';
import '../components/normalbutton.dart';
import '../components/crisistextbox.dart';

class CrisisScreen extends StatelessWidget {
  const CrisisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
          body: Container(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 200,
                child: Image.asset('assets/images/worried_pinpan.png')),
            CrisisTextBox(),
            NormalButton(
                buttonText: 'Call Help Line', onClickFunc: () => {null}),
            NormalButton(buttonText: 'Call Police', onClickFunc: () => {null}),
            NormalButton(
                buttonText: 'Call Ambulance', onClickFunc: () => {null})
          ],
        ),
      ))),
    );
  }
}
