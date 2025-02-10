import 'package:flutter/material.dart';
import 'package:pocked/screen/main_screen/chatbot/chatbot.dart';
import 'package:pocked/screen/main_screen/course/coursescreen.dart';
import 'package:pocked/screen/main_screen/home/homescreen.dart';
import 'package:pocked/screen/main_screen/course/lessonscreen.dart';
import 'package:pocked/screen/main_screen/quiz/analysisscreen.dart';
import 'package:pocked/screen/main_screen/quiz/leaderboard.dart';
import 'package:pocked/screen/main_screen/quiz/quiz1.dart';
import 'package:pocked/screen/main_screen/quiz/quizstart.dart';
import 'package:pocked/screen/main_screen/root_page.dart';
import 'destination.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({
    super.key,
    required this.destination,
    required this.navigatorKey,
  });

  final Destination destination;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        Widget page;
        final args = settings.arguments as Map<String, dynamic>?; // Handle arguments

        int receivedIndex = args?['index'] ?? destination.index; // Use passed index or fallback

        switch (settings.name) {
          case '/':
            if (receivedIndex == 0) {
              page = const HomeScreen();
            } else if (receivedIndex == 1) {
              page = const Coursescreen();
            } else if (receivedIndex == 2) {
              page = const ChatScreen();
            } else {
              page = const QuizStart();
            }
            break;

          case '/lesson':
            page = const Lessonscreen();
            break;
          case '/course':
            page=const Coursescreen();
          case '/quizscreen1':
            page=const QuizScreen1();
          case '/analysis':
            page= const AnalysisScreen();
          case '/leaderboard':
            page= const LeaderboardScreen();
          default:
            page = RootPage(destination: destination);
        }

        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}
