import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home_page.dart';

class LevelSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background to white
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey[100],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pasirinkite Sunkumo Lygį',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.grey[100]),
        ),
        elevation: 5.0,
      ),
      body: Stack(
        children: [
          // Background animation
          Positioned.fill(
            child: Container(
              color: Colors.white, // Ensure background is white
              child: Lottie.asset(
                'assets/level_selection_background.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildHeaderText(),
                  SizedBox(height: 30.0),
                  _buildLevelButton(context, 'Apšilimas', 'family',
                      Colors.deepPurple[700]!),
                  SizedBox(height: 20.0),
                  _buildLevelButton(
                      context, 'Pažengusiems', 'advanced', Colors.deepPurple[700]!),
                  SizedBox(height: 20.0),
                  _buildLevelButton(context, '18+', 'eighteenPlus',
                      Colors.grey[900]!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      'Pasirinkite norimą sunkumo lygį:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }

  Widget _buildLevelButton(
      BuildContext context, String label, String level, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(level: level),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.grey[100], // Ensure grey text
            ),
          ),
        ),
      ),
    );
  }
}