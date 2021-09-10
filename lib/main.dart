import 'dart:ui';

import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'connexion_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: CftvaHomePage());
  }
}

class CftvaHomePage extends StatefulWidget {
  @override
  _CftvaHomePageState createState() => _CftvaHomePageState();
}

class _CftvaHomePageState extends State<CftvaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('CFTVA', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.blue.shade200,
              Colors.blueAccent.shade700,
              Colors.blue.shade900
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                '''  Chemin de fer touristique de la vallée de l'Aa ''',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                child: Image.asset('images/vapeur.jpg')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ConnexionPage();
                    },
                  ),
                );
              },
              style:
                  ElevatedButton.styleFrom(primary: Colors.white,
                  padding:EdgeInsets.fromLTRB(130, 15, 130, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )),
              child: Text(
                'Entrer'.toUpperCase(),
                style: TextStyle(
                  color: Colors.blue.shade500,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
