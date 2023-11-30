import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            //adding image from the assest folder
            'assets/quiz-logo.png',
            width: 200,
            color:
                const Color.fromARGB(150, 255, 255, 255), //Opacity of the image
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {}, //Code that runs the click button
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.add_task_sharp),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
