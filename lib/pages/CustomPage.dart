import 'package:flutter/material.dart';
import 'home_page.dart';

class CustomPage extends StatefulWidget {
  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  final List<String> actualQuestions = [];
  final List<String> questionPlaceholders = [];
  final TextEditingController playerController = TextEditingController();
  final TextEditingController questionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey[100],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Susikurk Pats',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.grey[100]),
        ),
        backgroundColor: Colors.deepPurple[700],
      ),
      resizeToAvoidBottomInset: true, // Adjust layout for keyboard
      body: Column(
        children: [
          // Scrollable question list
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: questionPlaceholders.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      questionPlaceholders[index],
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          actualQuestions.removeAt(index);
                          questionPlaceholders.removeAt(index);
                          _resetQuestionPlaceholders();
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          // Input fields and buttons
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Column(
              children: [
                TextField(
                  controller: playerController,
                  decoration: InputDecoration(
                    labelText: 'Žaidėjo vardas',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: questionController,
                  decoration: InputDecoration(
                    labelText: 'Užduotis',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (playerController.text.isNotEmpty &&
                              questionController.text.isNotEmpty) {
                            setState(() {
                              actualQuestions.add(questionController.text);
                              questionPlaceholders.add(
                                "${playerController.text} | Užduotis ${questionPlaceholders.length + 1}",
                              );
                            });
                            playerController.clear();
                            questionController.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple[700],
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text(
                          'Pridėti užduotį',
                          style: TextStyle(fontFamily: 'Poppins', color: Colors.grey[100]),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (actualQuestions.isNotEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(
                                  level: 'custom',
                                  customQuestions: actualQuestions,
                                ),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[700],
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text(
                          'Pradėti žaidimą',
                          style: TextStyle(fontFamily: 'Poppins', color: Colors.grey[100]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _resetQuestionPlaceholders() {
    for (int i = 0; i < questionPlaceholders.length; i++) {
      String playerName = questionPlaceholders[i].split('|')[0].trim();
      questionPlaceholders[i] = "$playerName | Užduotis ${i + 1}";
    }
  }

  @override
  void dispose() {
    playerController.dispose();
    questionController.dispose();
    super.dispose();
  }
}
