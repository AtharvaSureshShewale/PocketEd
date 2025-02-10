import 'package:flutter/material.dart';
import 'package:pocked/screen/onboarding/onboardscreen3.dart';
import 'package:pocked/screen/loginorsignup/welcomescreen.dart';


class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1D4F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration:
                        const Duration(milliseconds: 500), // Animation duration
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const WelcomeScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF80AB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.play_arrow, color: Colors.black),
                label: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(height: 170),
          Center(
            child: Image.asset(
              'assets/images/img3.png',
              width: MediaQuery.of(context).size.width * 0.75,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                ),
                children: [
                  TextSpan(
                    text: 'Practice ',
                    style: TextStyle(color: Colors.purple[900], fontWeight: FontWeight.bold,fontSize: 30),
                  ),
                  const TextSpan(
                    text: 'with simulated scenarios',
                    style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration:
                        const Duration(milliseconds: 500), // Animation duration
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const OnboardingScreen3(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
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
                "NEXT",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: 10,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}