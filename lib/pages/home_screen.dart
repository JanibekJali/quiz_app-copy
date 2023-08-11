import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/local_data/questions_answers.dart';
import 'package:quiz_app/widgets/option_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Jooptor {
  A,
  B,
  C,
  D,
}

class _HomeScreenState extends State<HomeScreen> {
  String suroo1 = 'Кыргызстанда  8 область бар';
  String suroo2 = 'Кыргызстанда  8 область бар';
  String suroo3 = 'Кыргызстанда  8 область бар';
  List<String> names = ['Timur', 'Kubat', 'Manas'];
  List<Icon> icons = [];
  bool buttubu = false;

  Icon tuuraIcon = const Icon(
    Icons.check,
    color: Colors.green,
    size: 40,
  );

  Icon kataIcon = const Icon(
    Icons.cancel,
    color: Colors.red,
    size: 40,
  );
  bool isSelected = false;
  bool isAlreadySelected = false;

  final correct = Colors.green;
  final incorrect = Colors.red;
  // int index = 0;
  // void otkoz() {
  //   index = index + 1;
  // }
  int index = 0;
  List<Questions> questions1 = [
    Questions(
      id: '10',
      title: '2+2 = ?',
      options: {
        '1': false,
        '2': false,
        '4': true,
        '5': false,
      },
    ),
    Questions(
      id: '11',
      title: '2+3 = ?',
      options: {
        '1': false,
        '2': false,
        '4': false,
        '5': true,
      },
    ),
    Questions(
      id: '12',
      title: '2+9 = ?',
      options: {
        '1': false,
        '11': true,
        '4': false,
        '5': false,
      },
    ),
    Questions(
      id: '13',
      title: '2+10 = ?',
      options: {
        '1': false,
        '2': false,
        '12': true,
        '5': false,
      },
    ),
  ];
  String getQuestion() {
    return questions1[index].title!;
  }

  Map<String, dynamic> getAnswers() {
    return questions1[index].options!;
  }

  void jooptuTap(Jooptor userdinJoobu) {
    final bizdinJoop = getQuestion();
    if (userdinJoobu == bizdinJoop) {
      icons.add(tuuraIcon);
    } else if (userdinJoobu != bizdinJoop) {
      icons.add(kataIcon);
    }
    // if (questions.suroolorJooptor.length == '') {
    //   buttubu = false;
    // }
    // questions.otkoz();
    // icons = [];
    setState(() {});
  }

  void nextQuestion() {
    if (index == questions1.length - 1) {
      return;
    } else {
      setState(() {
        index++;
        isSelected = false;
        isAlreadySelected = false;
      });
    }
  }

  int score = 0;
  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
        setState(() {
          isSelected = true;
          isAlreadySelected = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: AppBar(
        elevation: 0.0,
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text(
              'Score: $score',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          QuestionWidget(
            question: questions1[index].title!,
            indexAction: index,
            totalQuestions: questions1.length,
          ),
          const SizedBox(
            height: 40,
          ),
          for (int i = 0; i < questions1[index].options!.length; i++)
            InkWell(
              onTap: () => checkAnswerAndUpdate(
                questions1[index].options!.values.toList()[i],
              ),
              child: OptionWidget(
                // isSelected:  ,
                color: isSelected
                    ? questions1[index].options!.values.toList()[i] == true
                        ? correct
                        : incorrect
                    : Colors.white,
                option: questions1[index].options!.keys.toList()[i],
              ),
            ),
          // InkWell(
          //   onTap: () {
          //     // jooptuTap(Jooptor.ooba);
          //     getAnswers();
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: const Color(0xff4CB050),
          //       borderRadius: BorderRadius.circular(6),
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          //       child: Text(
          //         questions1[index].options!.keys.first.toString(),
          //         style: TextStyle(
          //           fontSize: 32,
          //           color: Color(0xffffffff),
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          // InkWell(
          //   onTap: () {
          //     // jooptuTap(Jooptor.jok);
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.circular(6),
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          //       child: Text(
          //         questions1[index].options!.keys.length.toString(),
          //         style: const TextStyle(
          //           color: Color(0xffffffff),
          //           fontSize: 32,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // InkWell(
          //   onTap: () {
          //     // jooptuTap(Jooptor.jok);
          //   },
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.circular(6),
          //     ),
          //     child: const Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          //       child: Text(
          //         'C',
          //         style: TextStyle(
          //           color: Color(0xffffffff),
          //           fontSize: 32,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),

          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              nextQuestion();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                child: Text(
                  'Get Next',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: icons,
          )
        ],
      ),
    );
  }
}
