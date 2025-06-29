import 'package:quiz_application/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List avilabileanswers;
  QuestionItemModel({required this.title, required this.avilabileanswers});
}

List<QuestionItemModel> question = [
  QuestionItemModel(
    title: "It's Sunday night. You have a Monday deadline. You:",
    avilabileanswers: answerforthefirstquestion,
  ),
  QuestionItemModel(
    title: "Your phone battery dies while you're \"researching.\" You:",
    avilabileanswers: answerforthesecodquestion,
  ),
  QuestionItemModel(
    title: "You tell yourself you'll start working after:",
    avilabileanswers: answerforthethirdquestion,
  ),
  QuestionItemModel(
    title: "Your workspace currently looks like:",
    avilabileanswers: answerforthefourthquestion,
  ),
  QuestionItemModel(
    title: "When you finally sit down to work, you immediately:",
    avilabileanswers: answerforthefifthquestion,
  ),
  QuestionItemModel(
    title: "Your relationship with deadlines is:",
    avilabileanswers: answerforthesixquestion,
  ),
  QuestionItemModel(
    title: "You're most productive when:",
    avilabileanswers: answerforthesevenquestion,
  ),
  QuestionItemModel(
    title: "Your friends know you as:",
    avilabileanswers: answerfortheeightquestion,
  ),
  QuestionItemModel(
    title: "Your browser history is::",
    avilabileanswers: answerfortheninequestion,
  ),
  QuestionItemModel(
    title: "Right now, instead of working, you're:",
    avilabileanswers: answerforthetenquestion,
  ),
];
