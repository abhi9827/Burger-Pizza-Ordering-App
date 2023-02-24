import 'package:flutter/material.dart';

Widget customTextField({
  String? hint,
  Controller,
  validator,
  onSaved,
  Widget? Icon,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 10,
      ),
      TextFormField(
        style: TextStyle(fontSize: 20),
        controller: Controller,
        validator: validator,
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon,
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      )
    ],
  );
}
