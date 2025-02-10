import 'package:flutter/material.dart';
import 'package:pocked/main.dart';

class Lessonscreen extends StatelessWidget {
  const Lessonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        } else{
        homeKey.currentState?.updateIndex(3);
        Navigator.pushReplacementNamed(context, '/course'); 

        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFE9D7F5),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 2,
            centerTitle: true,
            title: Text(
              "Lessons",
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.purple[900]),
              onPressed: () {
                Navigator.pop(context); 
              },
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _buildTabs(),
                const SizedBox(height: 15),
                const Text("10 Lessons  •  25 Hours",
                    style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 15),
                _buildLessons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTabItem("Self Learning", true),
        _buildTabItem("Certificate", false),
        _buildTabItem("Upgrade", false),
      ],
    );
  }

  Widget _buildTabItem(String title, bool isSelected) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.purple : Colors.black54,
          ),
        ),
        if (isSelected)
          Container(
            width: 60,
            height: 3,
            color: Colors.purple,
            margin: const EdgeInsets.only(top: 4),
          ),
      ],
    );
  }

  Widget _buildLessons() {
    return Column(
      children: [
        _buildLessonTile(
            "Lesson 1", "Introduction", ["1.1 Introduction to Finance"]),
        _buildLessonTile("Lesson 2", "Financial Fundamentals", []),
        _buildLessonTile("Lesson 3", "Financial Planning Flow", []),
        _buildLessonTile("Lesson 4", "Tax Planning", []),
        _buildLessonTile("Lesson 5", "Investment Planning", []),
        _buildLessonTile("Lesson 6", "Money Calculations", []),
      ],
    );
  }

  Widget _buildLessonTile(
      String lessonNumber, String title, List<String> subLessons) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lessonNumber,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900]),
              ),
              Icon(Icons.expand_more, color: Colors.purple[900]),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900]),
          ),
          if (subLessons.isNotEmpty)
            ...subLessons.map((sub) => _buildSubLesson(sub)),
        ],
      ),
    );
  }

  Widget _buildSubLesson(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Row(
        children: [
          const Icon(Icons.play_circle_fill, color: Colors.black54, size: 20),
          const SizedBox(width: 5),
          Text(title,
              style: const TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }
}
