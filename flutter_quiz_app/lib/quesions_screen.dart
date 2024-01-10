import "package:flutter/material.dart";

class QuesionScreen extends StatefulWidget {
  const QuesionScreen({super.key});

  @override
  State<QuesionScreen> createState() => _QuesionScreenState();
}

class _QuesionScreenState extends State<QuesionScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}