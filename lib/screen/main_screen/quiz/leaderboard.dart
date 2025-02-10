import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E1FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.account_circle, color: Colors.purple),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications, color: Colors.purple),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.settings, color: Colors.purple),
              onPressed: () {}),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none, 
        children: [

          Container(
            width: double.infinity,
            height: 300, 
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Leaderboard!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 60,),
                      leaderboardColumn('assets/images/profile2.png',
                          'assets/images/lead2.png', '2','442',120,6.1,15,0),
                    ],
                  ),
                  leaderboardColumn('assets/images/profile1.png',
                      'assets/images/lead1.png', '1','453',150,0,0,0),

                  Column(
                    children: [
                      const SizedBox(height:40),
                      leaderboardColumn('assets/images/profile3.png',
                          'assets/images/lead3.png', '3','433',135,6.5,0,15),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Column(
                  children: [
                    _buildLeaderboardRow('04', 'Ishaani', '223pt'),
                    _buildLeaderboardRow('05', 'Esha', '160pt'),
                    _buildLeaderboardRow('06', 'Kaosar', '140pt'),
                    _buildLeaderboardRow('07', 'Sam', '130pt'),
                    _buildLeaderboardRow('18', 'Jon', '120pt'),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('<- Back',
                          style: TextStyle(color: Colors.purple))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Next ->',
                          style: TextStyle(color: Colors.purple))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget leaderboardColumn(String profileImage, String leadImage, String rank, String score, double t,double rot,double left,double right) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(profileImage, width: 80),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(leadImage), 
            Transform.rotate(
              angle: rot,
              child: Text(
                rank,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, 
                  shadows: [
                    Shadow(
                      color: Colors.white, 
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top:t,
              child: Transform.rotate(
                angle: rot,
                child: Padding(
                  padding: EdgeInsets.only(left: left,right: right),
                  child: Text(score),
                ))),
          ],
        ),
      ],
    );
  }
}

Widget _buildLeaderboardRow(String position, String name, String score) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [

        SizedBox(
          width: 30, 
          child: Text(
            position,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),

        Row(
          children: [
            const CircleAvatar(backgroundColor: Colors.grey, radius: 16),
            const SizedBox(width: 10),

            SizedBox(
              width: 100, 
              child: Text(
                name,
                overflow: TextOverflow.ellipsis, 
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0XFFFF6584),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            score,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

