import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'multiple_choice.dart';
import '../dashboard.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int correctAnswers;
  final int wrongAnswers;

  ScoreScreen({
    required this.score,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.wrongAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Custom AppBar with curved corners
          Container(
            height: MediaQuery.of(context).size.height * 0.45, // Adjusted height
            decoration: BoxDecoration(
              color: Color(0xFF0A1128), // Deep Navy Blue for the app bar
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent, // Make AppBar transparent
              elevation: 0,
              centerTitle: true,
            ),
          ),
          // Make the content scrollable
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15), // Space for the score
                // Circular Score Display
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.blueGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Score',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '$score pt',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // Statistics Card
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // First Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Completion Column
                            _buildStatColumn(
                              icon: Icons.circle,
                              iconColor: Colors.green,
                              value: '${(correctAnswers / totalQuestions * 100).toInt()}%',
                              label: 'Completion',
                            ),
                            // Total Questions Column
                            _buildStatColumn(
                              icon: Icons.circle,
                              iconColor: Colors.purple,
                              value: '$totalQuestions',
                              label: 'Total Questions',
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Second Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Correct Answers Column
                            _buildStatColumn(
                              icon: Icons.circle,
                              iconColor: Colors.green,
                              value: '$correctAnswers',
                              label: 'Correct Answer',
                            ),
                            // Wrong Answers Column
                            _buildStatColumn(
                              icon: Icons.circle,
                              iconColor: Colors.red,
                              value: '$wrongAnswers',
                              label: 'Wrong Answer',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // Bottom Button Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildIconButton(Icons.refresh, 'Play Again', Colors.blue, () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }),
                      _buildIconButton(Icons.home, 'Home', Colors.purple, () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SmartHomeApp()));
                      }),
                      _buildIconButton(Icons.exit_to_app, 'Exit', Colors.green, () {
                        // Close the app
                        SystemNavigator.pop();
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn({
    required IconData icon,
    required Color iconColor,
    required String value,
    required String label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 10, color: iconColor),
            SizedBox(width: 5),
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, String label, Color color, Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            radius: 30,
            child: Icon(icon, size: 30, color: color),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
