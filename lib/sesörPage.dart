import 'package:arduinio_app/ders1.dart';
import 'package:arduinio_app/ders2.dart';
import 'package:arduinio_app/ders3.dart';
import 'package:arduinio_app/ders4.dart';
import 'package:arduinio_app/ders5.dart';
import 'package:arduinio_app/ders6.dart';
import 'package:arduinio_app/ders7.dart';
import 'package:arduinio_app/page.dart';
import 'package:flutter/material.dart';

class SensorPage extends StatelessWidget {
  const SensorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [Padding(
              padding: const EdgeInsets.only(left: 20, top: 80),
              child: Column(
          children: [
            ButtonView(context, Color.fromARGB(255, 167, 206, 238),"Ders 1",Ders1()),
            ButtonView(context, Color.fromARGB(255, 129, 209, 131),"Ders 2",Ders2()),
            ButtonView(context, Color.fromARGB(255, 255, 178, 63),"Ders 3",Ders3()),
            ButtonView(context, Color.fromARGB(255, 199, 63, 223),"Ders 4",Ders4()),
            ButtonView(context, Color.fromARGB(255, 250, 229, 43),"Ders 5",Ders5()),
            ButtonView(context, Color.fromARGB(255, 129, 209, 131),"Ders 6",Ders6()),
            ButtonView(context, Color.fromARGB(255, 167, 206, 238),"Ders 7",Ders7()),
            
            
            
          ],
              ),
            ),]
        ));
  }

  Widget ButtonView(BuildContext context, Color color,String text,Widget page) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Container(
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
            width: 370,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
