import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/pages/home_screen.dart';

class Questions {
  final String? id;
  final String? title;
  final Map<String, dynamic>? options;

  Questions({this.id, this.title, this.options});
}

class Question {
  String text;
  List<String> options;
  int correctOption;

  Question(this.text, this.options, this.correctOption);
}

class Questions1 {
  int index = 0;
  List<Question> quiz = [
    Question(
      "Janibek kachan torolgon?",
      ["1990", "1999", "2000", "1994"],
      1,
    ),
    Question(
      "What is the capital of France?",
      ["London", "Berlin", "Paris", "Madrid"],
      2,
    ),
    Question(
      "Which planet is known as the Red Planet?",
      ["Venus", "Mars", "Jupiter", "Saturn"],
      1,
    ),
  ];

  // List<QuestionModel> suroolorJooptor = [
  //   QuestionModel(
  //     suroolor: 'Kitay Kyrgyzstanga karaiby',
  //     jooptor: Jooptor.B,
  //   ),
  //   QuestionModel(
  //     suroolor: 'Кыргызстанда  8 область барby',
  //     jooptor: Jooptor.A,
  //   ),
  // ];
  // String? suroonuApke() {
  //   if (index < suroolorJooptor.length) {
  //     return suroolorJooptor[index].suroolor;
  //   } else {
  //     return '';
  //   }
  // }

  // Jooptor? jooptuApke() {
  //   if (index < suroolorJooptor.length) {
  //     return suroolorJooptor[index].jooptor;
  //   }
  // }

  void otkoz() {
    index = index + 1;
  }

  void kairaBashta() {
    index = 0;
  }
}

final questions = Questions();
