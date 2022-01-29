import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  final List<String> options;

  DropDownList({required this.options});

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String dropdownValue = '';

  void initState() {
    super.initState();

    setState(() {
      dropdownValue = widget.options[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    // dropdownValue = widget.options[0];

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(
          () {
            dropdownValue = newValue!;
          },
        );
      },
      items: widget.options.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }
}
