import 'package:flutter/material.dart';


class Coursescreen extends StatelessWidget {
  const Coursescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5C7F7),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 2,
          centerTitle: true,
          title: Text(
            "Course",
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
              const SizedBox(height: 10),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      // Top section (White Background)
                      Container(
                        width: constraints.maxWidth,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Left Text Section
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Become a Certified",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  Text("Financial Planner",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple[900])),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Unlock Your Potential with Our Online Courses.",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            const SizedBox(
                                width: 10), // Space between text and image
                            // Right Image Section
                            Image.asset(
                              'assets/images/course.png',
                              width: constraints.maxWidth *
                                  0.5, // Adjust image width
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: const Text("Why thinking? Start Learning.....",
                            style: TextStyle(color: Colors.white)),
                      ),
                      // Bottom Section (Transparent Background)
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildInfoBox("Status", "Ongoing",
                                    Icons.toggle_on, Colors.purple),
                                const SizedBox(
                                  height: 60, // Adjust height as needed
                                  child: VerticalDivider(
                                    width: 10, // Space around the divider
                                    thickness: 1, // Line thickness
                                    color: Colors.grey, // Divider color
                                  ),
                                ),
                                _buildInfoBox("Instructor", "James Adam",
                                    Icons.person, Colors.purple),
                                const SizedBox(
                                  height: 60, // Adjust height as needed
                                  child: VerticalDivider(
                                    width: 10, // Space around the divider
                                    thickness: 1, // Line thickness
                                    color: Colors.grey, // Divider color
                                  ),
                                ),
                                _buildInfoBox("Chapters", "10\n4 Quizzes",
                                    Icons.menu_book, Colors.purple),
                                const SizedBox(
                                  height: 60, // Adjust height as needed
                                  child: VerticalDivider(
                                    width: 10, // Space around the divider
                                    thickness: 1, // Line thickness
                                    color: Colors.grey, // Divider color
                                  ),
                                ),
                                _buildInfoBox("Language", "EN\nEnglish",
                                    Icons.language, Colors.purple),
                              ],
                            ),
                            const Divider(height: 30, color: Colors.grey),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Course Overview",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.purple[900])),
                                const Text("Study Resources",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black45)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "This course provides a comprehensive introduction to data structures, an essential foundation for computer science and software development. It covers the fundamentals of organizing, managing, and storing data efficiently for access and modification.",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black87),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(Icons.access_time,
                                    color: Colors.purple[900]),
                                const SizedBox(width: 5),
                                const Text("25 Hours",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                 Navigator.pushNamed(context, '/lesson');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text("Enroll Now",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox(String title, String value, IconData icon, Color color) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 5),
        Text(title,
            style: const TextStyle(fontSize: 12, color: Colors.black54)),
        Text(value,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900])),
      ],
    );
  }
}
