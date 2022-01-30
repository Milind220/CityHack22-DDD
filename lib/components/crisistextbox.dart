import 'package:flutter/material.dart';
import '../constants.dart';

class CrisisTextBox extends StatelessWidget {
  const CrisisTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60.0),
      //padding: const EdgeInsets.all(50.0),
      alignment: Alignment.center,
      child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Crisis Mode',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Do not panic... we are here to help. Do you want to book an immediate appointment?')),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    style:
                        OutlinedButton.styleFrom(primary: kMaxBlueGreenColour),
                    child: Text('Make an Appointment'),
                    onPressed: () => {null},
                  )),
            ],
          ),
          //alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1.0, color: kMiddleBlueColour),
                left: BorderSide(width: 1.0, color: kMiddleBlueColour),
                right: BorderSide(width: 1.0, color: kMiddleBlueColour),
                bottom: BorderSide(width: 1.0, color: kMiddleBlueColour),
              ),
              boxShadow: [
                BoxShadow(
                  color: kMiddleBlueColour,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ])),
    );
  }
}
