import 'package:flutter/material.dart';
import 'package:quiz_application/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  final void Function(int score) questionIndexChangeCallback;
  final bool isAnswerChosen;

  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.isAnswerChosen,
    required this.questionIndexChangeCallback,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answerMap.onpressed();
            questionIndexChangeCallback(answerMap.score);
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(8.0),
              color: isAnswerChosen ? Colors.green : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    answerMap.icon,
                    size: 30,
                    color: isAnswerChosen ? Colors.white : Colors.grey,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      answerMap.title,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: isAnswerChosen ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
