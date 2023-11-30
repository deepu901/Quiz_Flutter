import 'package:demo_quiz/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen =
          const QuestionScreen(); // activeScreen will be chnaged to Question screen if Switch screen is applied
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      //copied from main.dart to make the button useful and go to other page as button is on startscreen file
      home: Scaffold(
        //Scaffold is a widget(template) which contains body to it and home obviously has body in it where comes container.
        body: Container(
          //adding decoration inside container for good visual of app
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 107, 3, 126),
                Color.fromARGB(255, 198, 5, 232)
              ],
            ),
          ),
          child:
              activeScreen, //Used custom widget for good readibility of the code as it the one which comes up after statrting the app & activeScreen is equals to startscreen.
        ),
      ),
    );
  }
}
