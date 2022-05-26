import 'package:arduinio_app/page.dart';
import 'package:arduinio_app/paylasPage.dart';
import 'package:arduinio_app/projePage.dart';
import 'package:arduinio_app/puanlaPage.dart';
import 'package:arduinio_app/ses%C3%B6rPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 150,
          width: 450,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 246, 148, 1),
                Colors.yellow,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 5),
                    child: TextView(
                        "Arduino Projeleri", Colors.white, 20, FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: TextView(
                        "Makü Robotik",
                        Color.fromARGB(255, 244, 237, 237),
                        12,
                        FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0,top: 15),
                child: Image.asset(
                  "Assets/images/logo.jpg",
                  width: 220,
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(

            children: [
              RowView(context,"Assets/images/sensör.png","Sensör",SensorPage(),"Assets/images/proje.png","Proje",ProjePage()),
              RowView(context,"Assets/images/puanla.png","Puanla",PuanlaPage(),"Assets/images/paylas.png","Paylaş",PaylasPage()),
              
            ],
          ),
        )
      ]),
    );
  }

  Row RowView(BuildContext context,String path,String bottomName,Widget pageName,String path2,String bottomName2,Widget pageName2) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuInfo(context,150,path,bottomName,pageName),
                MenuInfo(context,150,path2,bottomName2,pageName2)
              ],
            );
  }

  Padding MenuInfo(BuildContext context,double width,String path,String bottomName,Widget pageName) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageName));
        },
        child: Container(
          width: 150,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [BoxShadow(
              color: Color.fromARGB(255, 141, 137, 137).withOpacity(0.1),
        spreadRadius:2,
        blurRadius: 1,
        offset: Offset(0, 2), 
            )]
          ),
          child: Column(
            children: [
              Image.asset(path,height: 125,),
              SizedBox(height: 19,),
              Text(bottomName)
            ],
          ),
          
        ),
      ),
    );
  }

  Text TextView(
      String text, Color color, double fontsize, FontWeight fontWeight) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
