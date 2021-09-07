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
        debugShowCheckedModeBanner: false,
         home: CftvaHomePage());
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Chemin de fer touristique de la vallée de l'Aa",
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset('images/vapeur.jpg'),
          FlatButton(
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
            color: Colors.blue.shade600,
            height: 50,
            child: Text(
              'Entrer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
