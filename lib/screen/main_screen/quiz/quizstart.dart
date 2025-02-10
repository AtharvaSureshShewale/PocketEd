import 'package:flutter/material.dart';

class QuizStart extends StatelessWidget {
  const QuizStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5C7F7),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/quiz.png'),
              const SizedBox(height: 50,),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/quizscreen1');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF80AB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF630E5C),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}