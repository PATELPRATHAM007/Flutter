import "package:flutter/material.dart";

class StartnigScreen extends StatelessWidget {
  
  const StartnigScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/photos/quiz-logo.png",
            height: 280,
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
    
            const SizedBox(height: 20,),
    
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text("learn flutter in fun way",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
    
            const SizedBox(height: 20,),
    
            OutlinedButton.icon(
              onPressed: (){
                startQuiz();
              },
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label:const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
      ),  
    );
  }
}