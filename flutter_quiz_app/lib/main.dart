import "package:flutter/material.dart";
import "gradientbackground.dart";

void main(List<String> args) {
  runApp(const QuizApp());
} 
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StartnigScreen(Color.fromRGBO(83, 20, 94, 1),Color.fromARGB(255, 104, 15, 117),"assets/photos/quiz-logo.png"),
      ),
    );
  }
}