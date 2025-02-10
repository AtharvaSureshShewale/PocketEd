import 'package:flutter/material.dart';
import 'destination.dart';
import 'destination_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin<Home> {
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, 'Dashbord', Icons.home, Colors.teal),
    Destination(1, 'Course', Icons.school, Colors.cyan),
    Destination(2, 'Chatbot', Icons.chat, Colors.orange),
    Destination(3, 'Trivia', Icons.book, Colors.blue),
  ];

  late final List<GlobalKey<NavigatorState>> navigatorKeys;
  late final List<AnimationController> destinationFaders;
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  AnimationController buildFaderController() {
    return AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void initState() {
    super.initState();
    navigatorKeys = List.generate(allDestinations.length, (_) => GlobalKey<NavigatorState>());

    destinationFaders = List.generate(
      allDestinations.length,
      (_) => buildFaderController(),
    );
    destinationFaders[selectedIndex].value = 1.0;
  }

  @override
  void dispose() {
    for (final controller in destinationFaders) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: allDestinations.asMap().entries.map((entry) {
          final int index = entry.key;
          final Destination destination = entry.value;
          return Offstage(
            offstage: index != selectedIndex,
            child: FadeTransition(
              opacity: destinationFaders[index],
              child: DestinationView(
                destination: destination,
                navigatorKey: navigatorKeys[index],
              ),
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            destinationFaders[selectedIndex].reverse();
            selectedIndex = index;
            destinationFaders[selectedIndex].forward();
          });
        },
        destinations: allDestinations.map((destination) {
          return NavigationDestination(
            icon: Icon(destination.icon, color: destination.color),
            label: destination.title,
          );
        }).toList(),
      ),
    );
  }
}
