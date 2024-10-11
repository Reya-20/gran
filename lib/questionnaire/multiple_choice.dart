import 'dart:async';
import 'package:flutter/material.dart';
import 'score.dart';

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

// Pangasinense questions
final List<Question> _pangasinenseQuestions = [
  Question(question: "What does 'Man-aliw ya?' mean in Pangasinense?", options: ['Are you happy?', 'Are you coming?', 'Are you tired?', 'Are you okay?'], correctAnswer: 'Are you coming?'),
  Question(question: "What is the Pangasinense word for 'rice field'?", options: ['Talon', 'Dalem', 'Uma', 'Padán'], correctAnswer: 'Padán'),
  Question(question: "How do you say 'I am hungry' in Pangasinense?", options: ['Inubla ak', 'Nagtatakaw ak', 'Nasipnget ak', 'Managkaraw ak'], correctAnswer: 'Nagtatakaw ak'),
  Question(question: "What does 'Bilang' mean in Pangasinense?", options: ['Counting', 'Quantity', 'Number', 'All of the above'], correctAnswer: 'All of the above'),
  Question(question: "What is the equivalent of 'Elder sister' in Pangasinense?", options: ['Manang', 'Inang', 'Manay', 'Kaing'], correctAnswer: 'Manay'),
  Question(question: "What does 'Maliket' mean in Pangasinense?", options: ['Beautiful', 'Painful', 'Heavy', 'Funny'], correctAnswer: 'Funny'),
  Question(question: "Which of the following means 'to sleep' in Pangasinense?", options: ['Maturog', 'Mangaro', 'Masubli', 'Mantong'], correctAnswer: 'Maturog'),
  Question(question: "What is the Pangasinense word for 'cloud'?", options: ['Angin', 'Awan', 'Langa', 'Abot'], correctAnswer: 'Awan'),
  Question(question: "How do you say 'sun' in Pangasinense?", options: ['Init', 'Bulan', 'Lángit', 'Agáo'], correctAnswer: 'Agáo'),
  Question(question: "What does 'Panggalatok' refer to?", options: ['A type of food', 'Pangasinense language', 'A dance', 'A religious practice'], correctAnswer: 'Pangasinense language'),
  Question(question: "How do you say 'star' in Pangasinense?", options: ['Tulang', 'Bituin', 'Bitún', 'Talong'], correctAnswer: 'Bitún'),
  Question(question: "What is 'Bakbakán' in Pangasinense?", options: ['A type of animal', 'A battlefield', 'A celebration', 'A work tool'], correctAnswer: 'A battlefield'),
  Question(question: "What does 'Say Anak' mean in Pangasinense?", options: ['The child', 'The man', 'The girl', 'The boy'], correctAnswer: 'The child'),
  Question(question: "Which word refers to 'joy' in Pangasinense?", options: ['Ligaya', 'Kalipay', 'Makaring', 'Sayang'], correctAnswer: 'Makaring'),
  Question(question: "What is 'Ari' in Pangasinense?", options: ['To wait', 'King', 'Land', 'Boat'], correctAnswer: 'King'),
  Question(question: "How do you say 'mountain' in Pangasinense?", options: ['Talón', 'Dúlon', 'Bantáy', 'Silángan'], correctAnswer: 'Bantáy'),
  Question(question: "What does 'Makaasi' mean in Pangasinense?", options: ['Angry', 'Strong', 'Merciful', 'Proud'], correctAnswer: 'Merciful'),
  Question(question: "How do you say 'old man' in Pangasinense?", options: ['Lakay', 'Laki', 'Gurang', 'Tuo'], correctAnswer: 'Lakay'),
  Question(question: "Which Pangasinense word means 'afternoon'?", options: ['Umat', 'Gab-i', 'Laóng', 'Intong'], correctAnswer: 'Laóng'),
  Question(question: "What does 'Baleg ya balay' mean in Pangasinense?", options: ['Big house', 'Small house', 'Old house', 'New house'], correctAnswer: 'Big house'),
];

final List<Question> _ilocanoQuestions = [
  Question(question: "What does 'Aglalo ka' mean in Ilocano?", options: ['Come here', 'Be careful', 'You be silent', 'You go first'], correctAnswer: 'You be silent'),
  Question(question: "How do you say 'storm' in Ilocano?", options: ['Langit', 'Bagyo', 'Amianan', 'Daga'], correctAnswer: 'Bagyo'),
  Question(question: "What does 'Adda ub-ubing ditoy balay' mean in Ilocano?", options: ['There is a baby in the house', 'There is a child in the house', 'There is a man in the house', 'There is a woman in the house'], correctAnswer: 'There is a child in the house'),
  Question(question: "Which word refers to 'food' in Ilocano?", options: ['Kanen', 'Danum', 'Pammanek', 'Apit'], correctAnswer: 'Kanen'),
  Question(question: "What is the Ilocano word for 'cold'?", options: ['Init', 'Lamiis', 'Lamiisén', 'Nateng'], correctAnswer: 'Lamiis'),
  Question(question: "How do you say 'angry' in Ilocano?", options: ['Agdigos', 'Agsakit', 'Agbuteng', 'Agpungtot'], correctAnswer: 'Agpungtot'),
  Question(question: "What does 'Aglaok' mean in Ilocano?", options: ['To eat', 'To sing', 'To play', 'To cry'], correctAnswer: 'To play'),
  Question(question: "Which of the following means 'to walk' in Ilocano?", options: ['Agpaspasada', 'Agdaliasat', 'Agpasa', 'Agdardaras'], correctAnswer: 'Agdaliasat'),
  Question(question: "What is the Ilocano word for 'moon'?", options: ['Init', 'Bulan', 'Nabuntuan', 'Araw'], correctAnswer: 'Bulan'),
  Question(question: "How do you say 'king' in Ilocano?", options: ['Agimat', 'Apo', 'Ari', 'Hari'], correctAnswer: 'Ari'),
  Question(question: "What does 'Maysa a lawas' mean in Ilocano?", options: ['One month', 'One day', 'One year', 'One week'], correctAnswer: 'One week'),
  Question(question: "What is the equivalent of 'a lot of people' in Ilocano?", options: ['Adu ti tao', 'Naangot nga tao', 'Dakkel nga tao', 'Ammu ti tao'], correctAnswer: 'Adu ti tao'),
  Question(question: "What does 'Makaupay' mean in Ilocano?", options: ['Tired', 'Stressed', 'Embarrassed', 'Pleased'], correctAnswer: 'Embarrassed'),
  Question(question: "Which word refers to 'rain' in Ilocano?", options: ['Daga', 'Ulan', 'Ambon', 'Tudaw'], correctAnswer: 'Ulan'),
  Question(question: "What is 'Batang' in Ilocano?", options: ['Stone', 'Boat', 'Tree', 'Rock'], correctAnswer: 'Rock'),
  Question(question: "How do you say 'high' in Ilocano?", options: ['Napardas', 'Nalleng', 'Nangalngil', 'Natayag'], correctAnswer: 'Natayag'),
  Question(question: "What does 'Mabuti la unay' mean in Ilocano?", options: ['Very good', 'Very bad', 'Very tall', 'Very small'], correctAnswer: 'Very good'),
  Question(question: "How do you say 'teacher' in Ilocano?", options: ['Maguro', 'Titser', 'Manursuro', 'Adal'], correctAnswer: 'Manursuro'),
  Question(question: "Which Ilocano word means 'hair'?", options: ['Agadaw', 'Buok', 'Buhok', 'Tuktuk'], correctAnswer: 'Buhok'),
  Question(question: "What is 'Saging' in Ilocano?", options: ['Banana', 'Apple', 'Orange', 'Grapes'], correctAnswer: 'Banana')
];


// Function to get a random selection of 10 questions from a category
List<Question> getRandomQuestions(String category) {
  List<Question> questions;
  if (category == 'Pangasinense') {
    questions = List.from(_pangasinenseQuestions)..shuffle();
  } else {
    questions = List.from(_ilocanoQuestions)..shuffle();
  }
  return questions.take(10).toList();
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Show the language selection dialog automatically
    Future.delayed(Duration.zero, () {
      _showLanguageSelectionDialog(context);
    });
  }

  void _showLanguageSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(category: 'Pangasinense'),
                    ),
                  );
                },
                child: Text('Pangasinense'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(category: 'Ilocano'),
                    ),
                  );
                },
                child: Text('Ilocano'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: Center(
        child: Text('Please select a language.'),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final String category;

  QuizScreen({required this.category});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Question> _questions;
  late int _currentQuestionIndex;
  late Timer _timer;
  int _remainingTime = 10; // Countdown time
  int _correctCount = 0;
  int _wrongCount = 0;

  @override
  void initState() {
    super.initState();
    _questions = getRandomQuestions(widget.category);
    _currentQuestionIndex = 0;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
          _showEndModal(true); // Show modal when time is up
        }
      });
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _timer.cancel();
      _showEndModal(false); // Show modal when the quiz is complete
    }
  }

  void _answerQuestion(String answer) {
    if (answer == _questions[_currentQuestionIndex].correctAnswer) {
      setState(() {
        _correctCount++;
      });
    } else {
      setState(() {
        _wrongCount++;
      });
    }
    _nextQuestion();
  }

  bool _shouldShowModal = true; // Flag to control modal visibility

  void _showEndModal(bool isTimeUp) {
    if (ModalRoute.of(context)?.settings.name == '/score' || !_shouldShowModal) {
      return; // Don't show the modal if already on the ScoreScreen or if the flag is false
    }

    showDialog(
      context: context,
      barrierColor: Colors.transparent, // Customize overlay color if needed
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isTimeUp ? "Time's Up!" : "Good Job!"),
          content: Text("You have completed the quiz."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _shouldShowModal = false;
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ScoreScreen(
                      score: (_correctCount / _questions.length * 100).toInt(),
                      totalQuestions: _questions.length,
                      correctAnswers: _correctCount,
                      wrongAnswers: _wrongCount,
                    ),
                  ),
                );
              },
              child: Text("View Score"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color(0xFFEDECF2)),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: Color(0xFF0A1128),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: 20,
            right: 20,
            child: Card(
              color: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 50),
                    Column(
                      children: [
                        Text(
                          'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _scoreIndicator(Icons.check_circle, Colors.lightBlue, '$_correctCount'),
                            _scoreIndicator(Icons.cancel, Colors.redAccent, '$_wrongCount'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        currentQuestion.question,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0A1128),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ...currentQuestion.options.map((option) {
                      return GestureDetector(
                        onTap: () => _answerQuestion(option),
                        child: OptionCard(text: option),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.width * 0.5 - 50,
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.lightBlue, width: 2),
                    ),
                  ),
                  CircularProgressIndicator(
                    value: _remainingTime / 10,
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                    strokeWidth: 6,
                  ),
                  Text(
                    '$_remainingTime',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A1128),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreIndicator(IconData icon, Color color, String score) {
    return Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 5),
        Text(
          score,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}

class OptionCard extends StatelessWidget {
  final String text;

  const OptionCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade400, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
