import 'package:cftva/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            children: [cftvaIcon, titleSection, inputSetion, ButtonWidget()],
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
    child: Image.network(
        'https://www.cftva62.com/wp-content/uploads/2016/04/cropped-logo_3.jpg'),
  ),
);

Widget titleSection = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'CFTVA',
        style: GoogleFonts.exo(
            fontSize: 40, color: Colors.white, fontWeight: FontWeight.w900),
      ),
      SizedBox(
        width: 3,
      ),
      Text(
        'Connexion',
        style: GoogleFonts.exo(
            fontSize: 40, color: Colors.white, fontWeight: FontWeight.w900),
      )
    ],
  ),
);
Widget textSection = Container(
  color: Colors.green,
  padding: EdgeInsets.all(20),
);

Widget inputSetion = Container(
  margin: EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: Colors.white30)),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.people_alt_outlined,
                size: 30,
                color: Colors.blue.shade900,
              ),
            ),
            Container(
              height: 60,
              width: 430,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: 'Pseudo',
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.white,
                      ),
                      border: InputBorder.none),
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: Colors.white30)),
          height: 60,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.blue.shade900,
                  size: 30,
                ),
              ),
              Container(
                height: 60,
                width: 430,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: GoogleFonts.comfortaa(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        hintText: 'Mot de passe',
                        hintStyle: GoogleFonts.comfortaa(
                          color: Colors.white,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              )
            ],
          )),
    ],
  ),
);

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MenuPage()));
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
        
      ),
      child: Text(
        'Connexion'.toUpperCase(),
        style: GoogleFonts.comfortaa(fontSize: 30, fontWeight: FontWeight.bold,
        color: Colors.blue.shade900),
      ),
    );
  }
}
