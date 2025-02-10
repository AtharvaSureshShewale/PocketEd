import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1D4F8),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), 
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildHeader(),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    _buildAcademySection(),
                    const SizedBox(height: 24),
                    _buildFeatureGrid(),
                    const SizedBox(height: 24),
                    Center(
                      child: _buildCard("Recently View", Colors.white,
                          'assets/images/File.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xFF6B2D7A),
          child: Icon(Icons.person, color: Colors.white),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Hello',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Rahul Sharma',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6B2D7A),
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildAcademySection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Academy - Level 1',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 110),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Current level',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildAcademyItem(
                'You and Money',
                'assets/images/House.png',
                Colors.orange,
              ),
              _buildAcademyItem(
                'Investing Basics',
                'assets/images/Money_bag.png',
                Colors.green,
              ),
              _buildAcademyItem(
                'Socity & Money',
                'assets/images/Team.png',
                Colors.red,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.grey, // Change color as needed
            thickness: 1, // Line thickness
            indent: 20, // Left padding
            endIndent: 20, // Right padding
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF97B7),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Enter the Academy',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademyItem(
    String title,
    String imagePath,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imagePath,
            width: 60, // Adjust size as needed
            height: 60,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildFeatureGrid() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildFeatureCard(
                  'Trivia\nGame',
                  "assets/images/Winner.png",
                  const Color(0xFF640D5F),
                  'Currently:\nTest your knowledge!',
                  const Color(0xFF640D5F).withOpacity(0.3),
                  Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildFeatureCard(
                  'Chatbot',
                  "assets/images/Chat.png",
                  const Color(0xFFFE4076),
                  'AI Powered -\nFinance Simplified',
                  const Color(0xFFFE4076).withOpacity(0.5),
                  Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _buildCard("LeaderBoard", Colors.white, "assets/images/Win.png"),
            const SizedBox(
              width: 11,
            ),
            _buildCard("Points", Colors.white, "assets/images/Dollar.png")
          ],
        )
      ],
    );
  }

  Widget _buildCard(
    String title,
    Color color,
    String imagePath,
  ) {
    return Container(
      width: 190,
      height: 60,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Row(
          children: [
            Image.asset(
              imagePath, // Use Image.asset for local images
              height: 40, // Adjust size as needed
              width: 40,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    String title,
    String imagePath, // Replaces IconData with image path
    Color color,
    String subtitle,
    Color bgColor,
    Color txcolor,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  imagePath, // Use Image.asset for local images
                  height: 40, // Adjust size as needed
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          if (subtitle.isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                color: txcolor,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ],
      ),
    );
  }
}
