import "package:flutter/material.dart";
import "quesions_screen.dart";
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget ? activeScreen; 
    
  @override
  void initState() {
    activeScreen = StartnigScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuesionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromRGBO(83, 20, 94, 1),Color.fromARGB(255, 104, 15, 117)],
            stops: [.3,1],
          )
        ),
        child: activeScreen,
        )
      ),
    );
  }
}