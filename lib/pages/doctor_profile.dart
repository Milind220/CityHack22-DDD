import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleapp/components/circle_profile_picture.dart';
import 'package:sampleapp/constants.dart';
import 'package:sampleapp/utils/dataStore.dart';

const String docImg =
    'https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=20&m=138205019&s=612x612&w=0&h=KpsSMVsplkOqTnAJmOye4y6DcciVYIBe5dYDgYXLVW4=';

const String name = 'Mike Chambers';
const String q1 = 'Are you open at nights?';

const String a1 = 'No we are only open during normal working hours.';

const String address = '7 Nathan Road, Yau Ma Tei';

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
                      style: ProfileTextStyle,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                        'My name is Dr. Scriba, I am a trained psychologist who studied at CityU. I have a lot of experience on working with patients who struggle with anxiety and depression. I hope that I can help you through troubled times...'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/booking');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
          const Divider(
            color: Colors.black,
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'FAQ',
                      style: ProfileTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      q1,
                      textAlign: TextAlign.left,
                      style: kquestionTextStyle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      a1,
                      textAlign: TextAlign.left,
                    ),
                  ),
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
          imgUrl: 'assets/images/Doc1.jpeg',
          innerRadius: 60.0,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 120,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5),
                color: Colors.white,
                height: 40,
                child: Center(
                  child: Text(name),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                color: Colors.grey,
                height: 40,
                child: Center(
                  child: Text(address),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
