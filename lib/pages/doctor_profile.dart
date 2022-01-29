import 'package:flutter/material.dart';
import 'package:sampleapp/components/doctorlisttile.dart';
import 'package:sampleapp/components/pillcomponent.dart';

const String docImg =
    'https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=20&m=138205019&s=612x612&w=0&h=KpsSMVsplkOqTnAJmOye4y6DcciVYIBe5dYDgYXLVW4=';

class DocProfileScreen extends StatelessWidget {
  const DocProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            color: const Color(0xFFC4C4C4),
            child: Column(
              children: [
                //SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(child: Image.network(docImg)),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        PillComponent(
                          PillColor: Colors.green,
                          PillText: 'Online',
                        ),
                      ],
                    ),
                    Column(),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Color(0xFFFFFFFF),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(),
        ),
      ],
    );
  }
}
