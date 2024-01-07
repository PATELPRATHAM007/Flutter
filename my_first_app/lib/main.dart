import "package:flutter/material.dart";
import "gradient.dart";
void main(List<String> args) {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue ,
        body: GradientContainer(Colors.blue,Colors.pink),
      ),
    );
  }
}
