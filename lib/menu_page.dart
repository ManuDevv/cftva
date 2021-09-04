import 'package:cftva/commercial.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('CFTVA', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Choisissez votre Fonction',
                  style: GoogleFonts.robotoCondensed(fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CONDUCTEUR',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Image.asset('images/conduite.jpg'),
              Container(
                width: 400,
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'AGENT DE DESSERTE',
                        style: GoogleFonts.robotoCondensed(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset('images/add2.jpeg'))
                  ],
                ),
              ),
              Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CommercialPage();
                    }));
                  },
                  child: Text(
                    'COMMERCIAL',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Image.asset('images/commercial.jpg')
            ],
          ),
        ));
  }
}
