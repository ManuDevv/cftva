import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommercialPage extends StatefulWidget {
  @override
  _CommercialPageState createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
  int height = 30;
  int nbrAdultes = 0;
  double prixAdulte = 0;
  int nbrEnfants = 0;
  double prixEnfant = 0;
  double total = 0;
  double totalTrain = 0;
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commercial'),
        centerTitle: true,
        actions: [Icon(Icons.menu)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               
                padding: EdgeInsets.all(20),
                child: Text(
                '''Chemin de fer  touristique
                   de la vallée de l\'Aa''',
                  style: GoogleFonts.playfairDisplay(fontSize: 30),
                  textAlign: TextAlign.justify,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blueGrey.shade400,
            ),
            child: Column(
              children: [
                Text(
                  'Billerrie',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'train du ' +
                      today.day.toString() +
                      '/' +
                      today.month.toString() +
                      '/' +
                      today.year.toString(),
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Column(
            // en dessous la partie adulte avec les btn + et -
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Adulte',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Expanded(child: Row()),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    nbrAdultes = nbrAdultes + 1;
                                    prixAdulte = prixAdulte + 13.5;
                                    total = total + 13.5;
                                    totalTrain = totalTrain + 13.5;
                                  });
                                },
                                icon: Icon(Icons.add_circle_rounded),
                                iconSize: 50,),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    nbrAdultes = nbrAdultes + -1;
                                    prixAdulte = prixAdulte + -13.5;
                                    total = total + -13.5;
                                  });
                                },
                                icon: Icon(Icons.remove_circle_rounded),
                                iconSize:50,)
                          ],
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular((40)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                color: Colors.cyan.shade300,
                alignment: Alignment.center,
                child: Text(
                  'Nombre d\'adulte: ' + nbrAdultes.toString(),
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                color: Colors.cyan.shade300,
                alignment: Alignment.center,
                child: Text(
                  'Total:  ' + prixAdulte.toString() + ' euros',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),

              ////////////////////// Partie enfant//////////////////
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.purple,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Enfant',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(child: Row()),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    nbrEnfants = nbrEnfants + 1;
                                    prixEnfant = prixEnfant + 7.5;
                                    total = total + 7.5;
                                    totalTrain = totalTrain + 7.5;
                                  });
                                },
                                icon: Icon(Icons.add_circle_rounded),
                                iconSize:50),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    nbrEnfants = nbrEnfants + -1;
                                    prixEnfant = prixEnfant + -7.5;
                                    total = total + -7.5;
                                  });
                                },
                                icon: Icon(Icons.remove_circle_rounded),
                                iconSize: 50,),
                          ],
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular((40)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                color: Colors.purple,
                alignment: Alignment.center,
                child: Text(
                  'Nombre d\'enfants: ' + nbrEnfants.toString(),
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                width: 400,
                height: 60,
                margin: EdgeInsets.only(top: 10),
                color: Colors.purple,
                alignment: Alignment.center,
                child: Text(
                  'Total:  ' + prixEnfant.toString() + ' euros',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              Container(
                width: 400,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green),
                    alignment:Alignment.center,
                child: Text(
                  'Total Billet: ' + total.toString() + ' euros',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      total = prixAdulte + prixEnfant;
                      // ré-initialisation des case enfant et adultes
                      nbrAdultes = 0;
                      prixAdulte = 0;
                      nbrEnfants = 0;
                      prixEnfant = 0;
                      total = 0;
                    });
                  },
                  child: Text(
                    'Enregistrer',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 60,
                margin: EdgeInsets.only(top: 20),
                color: Colors.green,
                alignment:Alignment.center,
                child: Text(
                  'Total train: ' + totalTrain.toString() + ' euros',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
