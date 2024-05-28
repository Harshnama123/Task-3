import 'package:flutter/material.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Language Learning App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/lessons': (context) => LessonsScreen(),
        '/lesson_details': (context) => LessonDetailsScreen(),
        '/quizzes': (context) => QuizzesScreen(),
        '/progress': (context) => ProgressScreen(),
        '/achievements': (context) => AchievementsScreen(),
        '/forum': (context) => ForumScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardButton(
              title: 'Start Lessons',
              route: '/lessons',
              color: Colors.orange, // Set color for the card
            ),
            CardButton(
              title: 'Take Quizzes',
              route: '/quizzes',
              color: Colors.orange, // Set color for the card
            ),
            CardButton(
              title: 'Track Progress',
              route: '/progress',
              color: Colors.orange, // Set color for the card
            ),
            CardButton(
              title: 'View Achievements',
              route: '/achievements',
              color: Colors.orange, // Set color for the card
            ),
            CardButton(
              title: 'Community Forum',
              route: '/forum',
              color: Colors.orange, // Set color for the card
            ),
          ],
        ),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String title;
  final String route;
  final Color color;

  const CardButton({
    required this.title,
    required this.route,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color, // Set background color for the card
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          // Navigate to the specified route when the card is tapped
          Navigator.pushNamed(context, route);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color for the card
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class LessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons'),
      ),
      body: ListView(
        children: [
          LessonCard(
            title: 'Lesson 1: Introduction to Vocabulary',
            description: 'Lesson 1: Introduction to Vocabulary \n This lesson covers basic vocabulary words and phrases.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 2: Grammar Basics',
            description: 'Lesson 2: Grammar Basics \n This lesson covers fundamental grammar rules.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 3: Conversation Practice',
            description: 'Lesson 3: Conversation Practice \n This lesson focuses on practicing conversation skills.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 4: Introduction to Vocabulary',
            description: 'Lesson 4: Introduction to Vocabulary \n This lesson covers basic vocabulary words and phrases.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 5: Grammar Basics',
            description: 'Lesson 5: Grammar Basics \n This lesson covers fundamental grammar rules.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 6: Conversation Practice',
            description: 'Lesson 6: Conversation Practice \n This lesson focuses on practicing conversation skills.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 7: Introduction to Vocabulary',
            description: 'Lesson 7: Introduction to Vocabulary \n This lesson covers basic vocabulary words and phrases.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 8: Grammar Basics',
            description: 'Lesson 8: Grammar Basics \n This lesson covers fundamental grammar rules.',
            route: '/lesson_details',
          ),
          LessonCard(
            title: 'Lesson 9: Conversation Practice',
            description: 'Lesson 9: Conversation Practice \n This lesson focuses on practicing conversation skills.',
            route: '/lesson_details',
          ),

          // Add more lessons as needed
        ],
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String title;
  final String description;
  final String route;

  const LessonCard({
    required this.title,
    required this.description,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route, arguments: description);
        },
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class LessonDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? lessonDescription = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Details'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            lessonDescription ?? 'Lesson details not available',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class QuizzesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? lessonTitle = ModalRoute.of(context)?.settings.arguments as String?;

    // Mock quiz data
    final List<QuizQuestion> quizQuestions = [
      QuizQuestion(
        question: 'What is the capital of France?',
        options: ['Paris', 'London', 'Berlin', 'Madrid'],
        correctAnswerIndex: 0,
      ),
      QuizQuestion(
        question: 'What is the largest planet in our solar system?',
        options: ['Mercury', 'Venus', 'Jupiter', 'Saturn'],
        correctAnswerIndex: 2,
      ),
      QuizQuestion(
        question: 'Which of the following is a primary color?',
        options: ['Green', 'Orange', 'Purple', 'Blue'],
        correctAnswerIndex: 3,
      ),
       QuizQuestion(
        question: 'What is the largest planet in our solar system?',
        options: ['Mercury', 'Venus', 'Jupiter', 'Saturn'],
        correctAnswerIndex: 2,
      ),
      QuizQuestion(
        question: 'Which of the following is a primary color?',
        options: ['Green', 'Orange', 'Purple', 'Blue'],
        correctAnswerIndex: 3,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes '),
      ),
      body: ListView.builder(
        itemCount: quizQuestions.length,
        itemBuilder: (context, index) {
          return QuizCard(
            question: quizQuestions[index],
          );
        },
      ),
    );
  }
}

class QuizCard extends StatefulWidget {
  final QuizQuestion question;

  const QuizCard({
    required this.question,
  });

  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.question,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: widget.question.options.map((option) {
                return RadioListTile(
                  title: Text(option),
                  value: option,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value as String?;
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Check the selected option and show appropriate feedback
                if (selectedOption != null) {
                  if (selectedOption == widget.question.options[widget.question.correctAnswerIndex]) {
                    // Correct answer selected
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Correct answer!'),
                      backgroundColor: Colors.green,
                    ));
                  } else {
                    // Incorrect answer selected
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Incorrect answer!'),
                      backgroundColor: Colors.red,
                    ));
                  }
                } else {
                  // No answer selected
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please select an option!'),
                    backgroundColor: Colors.yellow,
                  ));
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}



class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mock quiz data (Replace this with real data if available)
    final List<QuizResult> quizResults = [
      QuizResult(correct: true),
      QuizResult(correct: false),
      QuizResult(correct: true),
      QuizResult(correct: true),
      QuizResult(correct: false),
    ];

    // Calculate the number of correct and wrong answers
    int correctAnswers = 0;
    int wrongAnswers = 0;
    for (var result in quizResults) {
      if (result.correct) {
        correctAnswers++;
      } else {
        wrongAnswers++;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Progress'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Progress',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildLessonCompletion(),
            SizedBox(height: 20),
            _buildQuizPerformance(correctAnswers, wrongAnswers),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonCompletion() {
    // Mock data for lesson completion
    final List<String> completedLessons = ['Lesson 1', 'Lesson 2', 'Lesson 3', 'Lesson 4'];
    final int totalLessons = 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lesson Completion',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Completed ${completedLessons.length} out of $totalLessons lessons',
          style: TextStyle(fontSize: 16),
        ),
        // Display completed lessons
        ListView.builder(
          shrinkWrap: true,
          itemCount: completedLessons.length,
          itemBuilder: (context, index) {
            return Text(
              '- ${completedLessons[index]}',
              style: TextStyle(fontSize: 14),
            );
          },
        ),
      ],
    );
  }

  Widget _buildQuizPerformance(int correctAnswers, int wrongAnswers) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quiz Performance',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Total Quizzes: ${correctAnswers + wrongAnswers}',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Correct Answers: $correctAnswers',
          style: TextStyle(fontSize: 16, color: Colors.green),
        ),
        Text(
          'Wrong Answers: $wrongAnswers',
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ],
    );
  }
}

class QuizResult {
  final bool correct;

  QuizResult({required this.correct});
}




class AchievementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mock achievement data (Replace this with real data if available)
    final List<Achievement> achievements = [
      Achievement(
        title: 'Lesson Mastery',
        description: 'Complete 10 lessons',
        icon: Icons.book,
      ),
      Achievement(
        title: 'Quiz Champion',
        description: 'Achieve a perfect score on a quiz',
        icon: Icons.emoji_events,
      ),
      Achievement(
        title: 'Streak Master',
        description: 'Maintain a 7-day learning streak',
        icon: Icons.access_alarm,
      ),
      Achievement(
        title: 'Vocabulary Virtuoso',
        description: 'Learn 500 vocabulary words',
        icon: Icons.text_fields,
      ),
      Achievement(
        title: 'Community Contributor',
        description: 'Participate in 10 forum discussions',
        icon: Icons.people,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Achievements'),
      ),
      body: ListView.builder(
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(achievements[index].icon),
            title: Text(achievements[index].title),
            subtitle: Text(achievements[index].description),
            // You can customize the ListTile further as needed
          );
        },
      ),
    );
  }
}

class Achievement {
  final String title;
  final String description;
  final IconData icon;

  Achievement({
    required this.title,
    required this.description,
    required this.icon,
  });
}



class ForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: ListView.builder(
        itemCount: 10, // Number of mock discussion threads
        itemBuilder: (context, index) {
          // Generate mock data for each discussion thread
          final String threadTitle = 'Discussion Thread ${index + 1}';
          final String threadAuthor = 'User ${index % 5 + 1}';
          final String lastReply = 'Last Reply: ${DateTime.now().toString()}';
          final int replyCount = index * 3; // Mock reply count

          return ListTile(
            title: Text(threadTitle),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Author: $threadAuthor'),
                Text(lastReply),
                Text('Replies: $replyCount'),
              ],
            ),
            onTap: () {
              // Navigate to the selected discussion thread
              // You can implement this according to your app's navigation system
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to create a new discussion thread
          // You can implement this according to your app's functionality
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
