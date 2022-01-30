import 'package:flutter/material.dart';
import 'package:sampleapp/components/circle_profile_picture.dart';
import 'package:sampleapp/components/doctorlisttile.dart';
import 'package:sampleapp/components/pillcomponent.dart';
import 'package:sampleapp/constants.dart';

const String docImg =
    'https://media.istockphoto.com/photos/happy-healthcare-practitioner-picture-id138205019?k=20&m=138205019&s=612x612&w=0&h=KpsSMVsplkOqTnAJmOye4y6DcciVYIBe5dYDgYXLVW4=';

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
                  TopRow(),
                ],
              ),
            ),
          ),
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

// Column(
//       children: [
//         Expanded(
//           flex: 4,
//           child: Container(
//             color: const Color(0xFFC4C4C4),
//             child: Column(
//               children: [
//                 const SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CircleProfilePicture(
//                       imgUrl: docImg,
//                       innerRadius: 60.0,
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       height: 120,
//                       width: 200,
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             margin: const EdgeInsets.all(5),
//                             color: Colors.white,
//                             height: 40,
//                           ),
//                           Container(
//                             margin: const EdgeInsets.all(5),
//                             color: Colors.grey,
//                             height: 40,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.all(5),
//                           color: Colors.pink,
//                           height: 20,
//                           width: 100,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.all(5),
//                           color: Colors.pink,
//                           height: 20,
//                           width: 100,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.all(5),
//                           color: Colors.pink,
//                           height: 20,
//                           width: 100,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Column(
//                       children: [
//                         Container(
//                           color: Colors.blue,
//                           height: 30,
//                           width: 100,
//                         ),
//                         Container(
//                           color: Colors.blue,
//                           height: 30,
//                           width: 100,
//                         ),
//                         Container(
//                           color: Colors.blue,
//                           height: 30,
//                           width: 100,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: Container(
//             color: const Color(0xFFFFFFFF),
//           ),
//         ),
//         Expanded(
//           flex: 5,
//           child: Container(),
//         ),
//       ],
//     );
