import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int myTotalScore;
  final VoidCallback resetQuizOnPressed;

  const TotalScorePart({
    super.key,
    required this.myTotalScore,
    required this.resetQuizOnPressed,
  });

  Map<String, String> getResultData() {
    if (myTotalScore <= 20) {
      return {
        'title': "The Chaos Goblin 🧌",
        'description':
            "You don't procrastinate... you live in a constant state of beautiful disaster. Time is a construct, deadlines are suggestions, and somehow you're still alive. Honestly, we're impressed.",
      };
    } else if (myTotalScore <= 45) {
      return {
        'title': "The Anxiety Warrior ⚔️",
        'description':
            "You procrastinate until your fight-or-flight response kicks in, then become unstoppable. You're either doing nothing or EVERYTHING. There is no in-between, and honestly? It works.",
      };
    } else if (myTotalScore <= 70) {
      return {
        'title': "The Strategic Slacker 🎯",
        'description':
            "You've turned procrastination into an art form. You know exactly how long things take and cut it that close on purpose. Risky? Yes. Effective? Surprisingly, also yes.",
      };
    } else if (myTotalScore <= 90) {
      return {
        'title': "The Reformed Procrastinator 🦋",
        'description':
            "You've seen the error of your ways and mostly have your life together. Sometimes you slip back into old habits, but you catch yourself. Character development at its finest.",
      };
    } else {
      return {
        'title': "The Productivity Unicorn 🦄",
        'description':
            "You're either lying, or you're the mythical creature we've all heard about but never seen. Please teach us your ways, oh organized one. Also, are you okay? This level of productivity seems concerning.",
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final resultData = getResultData();

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🏆 THE BRUTAL RESULTS:',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                resultData['title']!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                resultData['description']!,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Your total score: $myTotalScore',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: resetQuizOnPressed,
                child: Text(
                  'Reset Quiz',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
