import 'package:flutter/material.dart';

Widget longText(String text) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 15),
        child: Container(
          child: Text(text, style: TextStyle(fontSize: 20)),
        ),
      ),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
