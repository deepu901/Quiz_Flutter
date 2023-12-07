import 'package:flutter/material.dart';
import 'package:demo_quiz/answer_button.dart';
import 'package:demo_quiz/Data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionsIndex = 0;

  answerQuestion() {
    setState(() {
      currentQuestionsIndex++;
    });

    //currentQuestionsIndex += 1;
    //currentQuestionsIndex = currentQuestionsIndex + 1;
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionsIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              );
            })
          ],
        ),
      ),
    );
  }
}
