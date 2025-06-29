import 'package:flutter/material.dart';
import 'package:quiz_application/models/questions.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Answer To Know What Type of Procrastinator Are You?',
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
