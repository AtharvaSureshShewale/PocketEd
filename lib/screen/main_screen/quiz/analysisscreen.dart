import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fl_chart/fl_chart.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

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
              const SizedBox(height: 30),

              const Text(
                'QUIZ TIME!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),

              const SizedBox(height: 10),

              const Positioned(
                top: -30, 
                child: CircleAvatar(
                  backgroundColor: Color(0XFFF3B6DE),
                  radius: 70,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFFF789B7),
                    radius: 65,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Score:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.purple),
                          ),
                          Text(
                            "100 pt",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color(0XFF640D5F), width: 2),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('     100% \n Completion',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.purple)),
                          Text('           20 \nTotal Questions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black87)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('   ✔13 \n   Correct',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 160,),
                          Text('  ❌07 \n  Wrong',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  )),

              const SizedBox(height: 20),

              Expanded(
                child: Column(
                  children: [
                    const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0XFF1D7FA9),
                          radius: 20,
                          child: Icon(Icons.refresh, color: Colors.white, size: 30)),
                        Text('Play Again'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0XFFCB9771),
                          radius: 20,
                          child: Icon(Icons.remove_red_eye, color: Colors.white, size: 30)),
                        Text('Review Answer'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0XFFFD3E75),
                          radius: 20,
                          child: Icon(Icons.share, color: Colors.white, size: 30)),
                        Text('Share Score'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 170,
                  padding: const EdgeInsets.all(8),
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                            color: Colors.green, value: 65, title: '✔'),
                        PieChartSectionData(
                            color: Colors.red[300], value: 35, title: '❌'),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
              ),

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
                      onPressed: () {
                        Navigator.pushNamed(context, '/leaderboard');
                      },
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
}
