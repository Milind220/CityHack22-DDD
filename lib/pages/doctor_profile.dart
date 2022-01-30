import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleapp/components/circle_profile_picture.dart';
import 'package:sampleapp/components/doctorlisttile.dart';
import 'package:sampleapp/components/pillcomponent.dart';
import 'package:sampleapp/constants.dart';

const String docImg =
    'https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=20&m=138205019&s=612x612&w=0&h=KpsSMVsplkOqTnAJmOye4y6DcciVYIBe5dYDgYXLVW4=';

const String q1 = 'How much do you cost per hour?';
const String s2 = 'Can I organise a trial session to test it out?';

const String a1 = 'It is 500 HDK / hour'
const String a2 = 'yes, I am available for a trial session';

class DocProfileScreen extends StatelessWidget {
  const DocProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMiddleBlueGreenColour,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              color: kMiddleBlueGreenColour,
              child: Column(
                children: [
                  const TopRow(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                        'My name is Doctor Name, I am a trained psychologist who studied at CityU. I have a lot of experience on working with patients who struggle with anxiety and depression. I hope that I can help you through troubled times...'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'BOOK APPOINTMENT',
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Text('FAQ'),
                  Text(q1);
                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleProfilePicture(
          imgUrl: docImg,
          innerRadius: 60.0,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 120,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5),
                color: Colors.white,
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                color: Colors.grey,
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
