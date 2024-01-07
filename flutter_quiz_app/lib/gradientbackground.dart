import "package:flutter/material.dart";

class StartnigScreen extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String qizeLogo;

  const StartnigScreen(this.color1,this.color2,this.qizeLogo,{super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1,color2],
          stops: const [.3,1],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              qizeLogo,
              height: 280,
              ),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){},style: TextButton.styleFrom(padding: const EdgeInsets.all(20)), child: const Text(
                "Start Quiz",
                style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}