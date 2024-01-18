import "package:flutter/material.dart";


class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onTap, 
    super.key});


    final String answerText;
    final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 6, 36, 99),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)
                
              ),
              child: Text(answerText),
            ),
    );
  }
}