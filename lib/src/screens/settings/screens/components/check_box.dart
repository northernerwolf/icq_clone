import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  bool isChecked = false;
  final String title;
  CheckBox({required this.title, required this.isChecked, super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.blue,
              visualDensity: VisualDensity.compact,
              value: widget.isChecked,
              onChanged: (value) {
                setState(() {
                  widget.isChecked = !widget.isChecked;
                  //state.didChange(value);
                });
              }),
        ],
      ),
    );
  }
}
