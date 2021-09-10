import 'package:flutter/material.dart';

class ConnexionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CFTVA'),
        centerTitle: true,
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cftvaIcon,
            ],
          ),
        ),
      ),
    );
  }
}

Widget cftvaIcon = Container(
  width: 250,
  height: 250,
  padding: EdgeInsets.all(30),
  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Color.fromRGBO(255, 255, 255, 0.1),
  ),
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 3))
        ]),
        child:Image.network('https://www.cftva62.com/wp-content/uploads/2016/04/cropped-logo_3.jpg') ,
  ),
);
