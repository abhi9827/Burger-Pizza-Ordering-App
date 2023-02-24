import 'package:flutter/material.dart';

Widget OurButton({String? Textb, onpress}) {
  return ElevatedButton(
      onPressed: () {
        onpress;
      },
      child: Text(
        "$Textb",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ));
}
