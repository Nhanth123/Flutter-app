import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('What can you do for this?', false),
    Question('Is this \'s true or false?', true),
    Question('You can lead a cow?', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText ?? '';
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer ?? false;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
