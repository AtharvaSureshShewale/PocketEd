import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3DDF7),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60), // Adjust height as needed
        child: AppBar(
          backgroundColor:
              Colors.transparent, // Keeps AppBar itself transparent
          elevation: 2,
          centerTitle: true,
          title: Text(
            "FinBuddy AI",
            style: TextStyle(
              color: Colors.purple[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.purple[900]),
            onPressed: () {},
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.white, // ✅ White background
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Hi, I am FinBuddy, your personalised financial assistant. How can I help you today?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF640D5F),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFA7FA2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Text(
                        "Enter the text",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
