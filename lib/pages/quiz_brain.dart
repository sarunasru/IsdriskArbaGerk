class QuizBrain {
  int questionsNum = 0;

  List<String> currentBank = [];

  final List<String> familyFriendlyBank = [
    'Klausimas 1',
    'Klausimas 2',
    'Klausimas 3',
  ];

  final List<String> advancedBank = [
    'Name all the planets in the solar system.',
    'Solve 5 x 12.',
    'Explain how a car engine works.',
  ];

  final List<String> eighteenPlusBank = [
    'Take a shot.',
    'Kiss the person to your left.',
    'What is the most embarrassing thing you have done while drunk?',
  ];

  void setLevel(String level) {
    switch (level) {
      case 'family':
        currentBank = List.from(familyFriendlyBank);
        break;
      case 'advanced':
        currentBank = List.from(advancedBank);
        break;
      case 'eighteenPlus':
        currentBank = List.from(eighteenPlusBank);
        break;
      default:
        currentBank = List.from(familyFriendlyBank); // Default to family
    }
    currentBank.shuffle();
    questionsNum = 0;
  }

  void nextQuestion() {
    if (!isFinished()) {
      questionsNum++;
    }
  }

  void previousQuestion() {
    if (questionsNum > 0) {
      questionsNum--;
    }
  }

  void reset() {
    questionsNum = 0;
    currentBank.shuffle();
  }

  bool isFinished() {
    return questionsNum >= currentBank.length;
  }

  String getQuestionText() {
    if (isFinished()) {
      return '';
    } else {
      return currentBank[questionsNum];
    }
  }
}
