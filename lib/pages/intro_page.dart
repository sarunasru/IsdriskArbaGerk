import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(
                // padding: const EdgeInsets.only(top: 20.0),
                 Container(
                  child: Lottie.asset('assets/partyy.json'),
                ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Išdrįsk Arba Gerk !',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Puikus vakaro žaidimas skirtas pagyvinti jūsų vakarėlį. Pasinerk į audringus iššūkius. Užduotys linksmins, o gėrimai drąsins.",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 60.0),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40.0,
                child: GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[700],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          "Pradėti",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.grey[100]),
                        ),
                      )),
                ),
              ),

              SizedBox(height: 25.0),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40.0,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    _showRulesDialog(context);
                    },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          "Taisyklės",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.grey[100]),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showRulesDialog(BuildContext context) {
  Alert(
    context: context,
    title: 'Taisyklės',
    desc: 'Atėjus žaidėjo eilei atvaizduojama užduotis, kurią privalo įvygdyti, šios neatlikus žaidėjas privalo išgerti.\n\nUžduotyje gali būti pateikti keli pasirinkimai iš kurių žaidėjas privalo pasirinkti vieną.\n\nUŽDUOTIS VISIEMS - tai užduotis, kurią privalo atlikti visi žaidėjai, šios neatlikus išgeria visi žaidėjai.',
    style: AlertStyle(
      isOverlayTapDismiss: false,
      titleStyle: TextStyle(
        fontSize: 20.0,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
      descStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14.0,
      ),
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Uždaryti",
          style: TextStyle(color: Colors.grey[100], fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.deepPurple[700],
      ),
    ],
  ).show();
}


