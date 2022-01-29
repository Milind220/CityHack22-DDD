import 'package:flutter/material.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //alignment: Alignment.center,
        width: 300,
        color: Colors.red,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NameArea(),
            PillArea(),
          ],
        ),
      ),
    );
  }
}

class NameArea extends StatelessWidget {
  const NameArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Doc image'),
          Column(
            children: [
              Text('Doc Name'),
              Text('Doc Blurb'),
            ],
          ),
        ],
      ),
    );
  }
}

class PillArea extends StatelessWidget {
  const PillArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('first match'),
              Text('Second Match'),
              Text('Third Match')
            ],
          ),
          Column(
            children: [
              Column(
                children: [
                  Text('First Mismatch'),
                  Text('Second Mismatch'),
                  Text('Third Mismatch')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
