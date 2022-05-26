import 'package:flutter/material.dart';

Widget header(String header, double size) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Container(
          width: double.infinity,
          height: 100,
          child: Center(
            child: Text(
              header,
              style: TextStyle(
                color: Colors.black,
                fontSize: size,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
