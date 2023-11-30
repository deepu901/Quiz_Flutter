import 'package:demo_quiz/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 107, 3, 126),
                Color.fromARGB(255, 198, 5, 232)
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
