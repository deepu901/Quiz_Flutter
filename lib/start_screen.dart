import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      //Wraped into container to centre
      child: Column(
        mainAxisSize: MainAxisSize
            .min, //Since we make column it starts from top to make sure it's on miggle we use mainAxisSize
        children: [
          Image.asset(
            //adding image from the assest folder
            'assets/quiz-logo.png',
            width: 200,
            color:
                const Color.fromARGB(150, 255, 255, 255), //Opacity of the image
          ),
          const SizedBox(
            //adding extra padding
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            //adding extra padding
            height: 20,
          ),
          OutlinedButton.icon(
            //.icon adding icon to the button
            onPressed: startQuiz, //Code that runs the click button
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.add_task_sharp),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
