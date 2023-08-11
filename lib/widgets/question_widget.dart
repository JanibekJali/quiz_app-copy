import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.question,
    required this.indexAction,
    required this.totalQuestions,
  }) : super(key: key);
  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Center(
        child: Text(
          'Question ${indexAction + 1}/$totalQuestions:    $question',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
