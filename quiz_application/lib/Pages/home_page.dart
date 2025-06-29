import 'package:flutter/material.dart';
import 'package:quiz_application/models/questions.dart';
import 'package:quiz_application/widgets/answer_item.dart';
import 'package:quiz_application/widgets/questions_item.dart';
import 'package:quiz_application/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0, myTotalScore = 0;
  int answerChosen = -1;
  int resultedScore = question.length * 10;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    showTotalScore = questionIndex == question.length;

    return Scaffold(
      body: SafeArea(
        child:
            !showTotalScore
                ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      QuestionItem(questionItem: question[questionIndex]),
                      const SizedBox(height: 30),
                      Column(
                        children: List.generate(
                          question[questionIndex].avilabileanswers.length,
                          (index) => AnswerItem(
                            answerMap:
                                question[questionIndex].avilabileanswers[index],
                            isAnswerChosen: answerChosen == index,
                            questionIndexChangeCallback: (score) {
                              setState(() {
                                myTotalScore += score;
                                answerChosen = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (questionIndex < question.length) {
                                questionIndex += 1;
                              }
                              answerChosen = -1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                : TotalScorePart(
                  myTotalScore: myTotalScore,
                  resetQuizOnPressed: () {
                    setState(() {
                      questionIndex = 0;
                      myTotalScore = 0;
                      answerChosen = -1;
                    });
                  },
                ),
      ),
    );
  }
}
