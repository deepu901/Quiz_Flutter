import 'package:flutter/material.dart';
import 'package:demo_quiz/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'my question is...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'answer1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'answer2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'answer3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
