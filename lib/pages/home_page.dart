import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'intro_page.dart';

// Create an instance of QuizBrain
QuizBrain quizBrain = QuizBrain();

class HomePage extends StatefulWidget {
  final String level;
  final List<String>? customQuestions;

  const HomePage({required this.level, this.customQuestions, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    if (widget.level == 'custom' && widget.customQuestions != null) {
      quizBrain.setCustomQuestions(widget.customQuestions!); // Set custom questions
    } else {
      quizBrain.setLevel(widget.level); // Set predefined questions based on level
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Žaidimo Puslapis',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Questions(),
        ),
      ),
    );
  }
}

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    final dynamic currentQuestion = quizBrain.getCurrentQuestion();

    String questionText = '';
    String? svgPath;

    if (currentQuestion is Map<String, String?>) {
      // When the question is a Map with 'text' and 'image'
      questionText = currentQuestion['text'] ?? '';
      svgPath = currentQuestion['image'];
    } else if (currentQuestion is String) {
      // When the question is a simple string
      questionText = currentQuestion;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (svgPath != null) // Render SVG if available
                    SvgPicture.asset(
                      svgPath,
                      color: Colors.black,
                      height: 200,
                      placeholderBuilder: (context) => CircularProgressIndicator(),
                    ),
                  if (svgPath != null) SizedBox(height: 20),
                  Text(
                    questionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  quizBrain.nextQuestion();

                  if (quizBrain.isFinished()) {
                    Alert(
                      context: context,
                      title: 'Pabaiga!',
                      desc: 'Pasiekėte žaidimo galą. Norėdami išeiti spauskite Baigti.',
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
                            "Baigti",
                            style: TextStyle(color: Colors.grey[100], fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              quizBrain.reset();
                            });

                            Navigator.pop(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => IntroPage()),
                            );
                          },
                          color: Colors.deepPurple[700],
                        ),
                      ],
                      closeFunction: () {
                        setState(() {
                          quizBrain.reset();
                        });
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => IntroPage()),
                        );
                      },
                    ).show();
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    "Toliau",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.grey[100],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  quizBrain.previousQuestion();
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    "Atgal",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.grey[100],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
