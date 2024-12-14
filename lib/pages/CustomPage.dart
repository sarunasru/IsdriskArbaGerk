import 'package:flutter/material.dart';
import 'home_page.dart';

class CustomPage extends StatefulWidget {
  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  final List<String> actualQuestions = []; // Stores the real question text
  final List<String> questionPlaceholders = []; // Stores placeholders
  final TextEditingController playerController = TextEditingController();
  final TextEditingController questionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Questions', style: TextStyle(fontFamily: 'Poppins')),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Column(
        children: [
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
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: playerController,
                        decoration: InputDecoration(
                          labelText: 'Player Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: questionController,
                        decoration: InputDecoration(
                          labelText: 'Question',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (playerController.text.isNotEmpty &&
                              questionController.text.isNotEmpty) {
                            setState(() {
                              String questionText = questionController.text;
                              actualQuestions.add(questionText); // Add the real question
                              questionPlaceholders.add(
                                "${playerController.text} Question ${questionPlaceholders.length + 1}",
                              ); // Add placeholder
                            });
                            playerController.clear();
                            questionController.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple[700],
                        ),
                        child: Text('Add Question'),
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
                                  customQuestions: actualQuestions, // Pass actual questions
                                ),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[600],
                        ),
                        child: Text('Start Game'),
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
      String playerName = questionPlaceholders[i].split(' Question')[0];
      questionPlaceholders[i] = "$playerName Question ${i + 1}";
    }
  }

  @override
  void dispose() {
    playerController.dispose();
    questionController.dispose();
    super.dispose();
  }
}
