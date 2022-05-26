import 'package:flutter/material.dart';

Column imageEvent(String path, String underInfo) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Container(
          width: double.infinity,
          height: 300,
          // color: Colors.black,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(path), fit: BoxFit.fill)),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        underInfo,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
