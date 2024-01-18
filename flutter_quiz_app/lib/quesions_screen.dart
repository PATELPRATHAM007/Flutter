import "package:flutter/material.dart";
import "answer_button.dart";
import "package:flutter_quiz_app/data/quesions.dart";

class QuesionScreen extends StatefulWidget {
  const QuesionScreen({super.key});
  @override
  State<QuesionScreen> createState() => _QuesionScreenState();
}

class _QuesionScreenState extends State<QuesionScreen> {

  var currentQuestionIndex = 0;

  void changeCurrentQuestionIndex(){
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(currentQuestion.text,
             textAlign: TextAlign.center,
                    style: const TextStyle( 
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                  
            const SizedBox(height: 15),
            ... currentQuestion.geteshuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: changeCurrentQuestionIndex);
            }),
            
          ],
        
        ),
      ),
    );
  }
}