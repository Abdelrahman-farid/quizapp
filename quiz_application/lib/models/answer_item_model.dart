import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final IconData icon;
  final VoidCallback onpressed;
  final int score;

  AnswerItemModel({
    required this.title,
    required this.onpressed,
    required this.icon,
    required this.score,
  });
}

List<AnswerItemModel> answerforthefirstquestion = [
  AnswerItemModel(
    title: "Currently googling \"how to fake your own death\" ",
    onpressed: () => debugPrint("C"),
    icon: Icons.dangerous,
    score: 0,
  ),
  AnswerItemModel(
    title: "I'll wake up early and do it ",
    onpressed: () => debugPrint("B"),
    icon: Icons.bed,
    score: 5,
  ),
  AnswerItemModel(
    title: "What deadline? panic intensifies ",
    onpressed: () => debugPrint("D"),
    icon: Icons.error_outline,
    score: 0,
  ),
  AnswerItemModel(
    title: "Finished it Friday like a responsible human ",
    onpressed: () {
      debugPrint("A");
    },
    icon: Icons.emoji_events,
    score: 10,
  ),
];
List<AnswerItemModel> answerforthesecodquestion = [
  AnswerItemModel(
    title: " Find a charger and \"just check one thing\" ",
    onpressed: () => debugPrint("B"),
    icon: Icons.power,
    score: 5,
  ),
  AnswerItemModel(
    title: "Stare at the blank screen hoping it turns on ",
    onpressed: () => debugPrint("D"),
    icon: Icons.help_outlined,
    score: 0,
  ),
  AnswerItemModel(
    title: "Use this as motivation to actually work ",
    onpressed: () => debugPrint("A"),
    icon: Icons.fitness_center,
    score: 10,
  ),
  AnswerItemModel(
    title: "Take this as a sign from the universe to nap ",
    onpressed: () => debugPrint("C"),
    icon: Icons.bedtime,
    score: 0,
  ),
];
List<AnswerItemModel> answerforthethirdquestion = [
  AnswerItemModel(
    title: " I already started, what's wrong with you people? ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.smart_toy,
    score: 10,
  ),

  AnswerItemModel(
    title: "I organize my entire life first ",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.cleaning_services,
    score: 0,
  ),
  AnswerItemModel(
    title: "I finish scrolling TikTok (narrator: they never finished) ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.phone_iphone_outlined,
    score: 0,
  ),
  AnswerItemModel(
    title: "This one episode ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.tv,
    score: 5,
  ),
];
List<AnswerItemModel> answerforthefourthquestion = [
  AnswerItemModel(
    title: "A crime scene investigators would struggle with ",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.search,
    score: 0,
  ),
  AnswerItemModel(
    title: " What workspace? I work from my bed ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.bed,
    score: 0,
  ),
  AnswerItemModel(
    title: " A minimalist dream ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.auto_awesome,
    score: 10,
  ),
  AnswerItemModel(
    title: "Organized chaos that makes sense to you ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.cyclone,
    score: 5,
  ),
];
List<AnswerItemModel> answerforthefifthquestion = [
  AnswerItemModel(
    title: "Make a detailed plan (that you'll ignore) ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.edit_note,
    score: 5,
  ),
  AnswerItemModel(
    title: " Actually start working like a psychopath ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.gps_fixed,
    score: 10,
  ),

  AnswerItemModel(
    title: "Remember you're hungry/thirsty/need to pee",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.directions_walk,
    score: 0,
  ),
  AnswerItemModel(
    title: "Open 47 tabs and accomplish nothing ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.language,
    score: 0,
  ),
];
List<AnswerItemModel> answerforthesixquestion = [
  AnswerItemModel(
    title: "Deadlines are my toxic ex that keeps coming back",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.heart_broken,
    score: 0,
  ),
  AnswerItemModel(
    title: "Deadlines are suggestions that I respect ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.handshake,
    score: 10,
  ),
  AnswerItemModel(
    title: "Dead-what-now? ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.help_outline,
    score: 0,
  ),
  AnswerItemModel(
    title: "Deadlines give me superpowers ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.flash_on,
    score: 5,
  ),
];
List<AnswerItemModel> answerforthesevenquestion = [
  AnswerItemModel(
    title: " I have a schedule and stick to it ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.calendar_today,
    score: 10,
  ),

  AnswerItemModel(
    title: "Mercury is in retrograde and the stars align ",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.star,
    score: 0,
  ),
  AnswerItemModel(
    title: "The pressure is real and my anxiety kicks in ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.local_fire_department,
    score: 5,
  ),
  AnswerItemModel(
    title: "Never. I'm decorative. ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.palette,
    score: 0,
  ),
];
List<AnswerItemModel> answerfortheeightquestion = [
  AnswerItemModel(
    title: "The one who pulls miracles out of thin air ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.celebration,
    score: 5,
  ),
  AnswerItemModel(
    title: "The hot mess they love anyway ",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.colorize,
    score: 0,
  ),
  AnswerItemModel(
    title: " The reliable one who has their life together ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.workspace_premium,
    score: 10,
  ),
  AnswerItemModel(
    title: " The one who's \"5 minutes away\" for the past hour )",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.access_time,
    score: 0,
  ),
];
List<AnswerItemModel> answerfortheninequestion = [
  AnswerItemModel(
    title: "Evidence that you've learned everything except what you need to ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.psychology,
    score: 0,
  ),
  AnswerItemModel(
    title: " 50% work, 50% \"quick\" distractions ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.balance,
    score: 5,
  ),
  AnswerItemModel(
    title: "A journey through every random thought you've ever had",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.roller_skating,
    score: 0,
  ),
  AnswerItemModel(
    title: "Work-related searches and productivity tips ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.menu_book,
    score: 10,
  ),
];
List<AnswerItemModel> answerforthetenquestion = [
  AnswerItemModel(
    title: "Taking a well-deserved break from being productive ",
    onpressed: () => debugPrint("Black choice"),
    icon: Icons.beach_access,
    score: 10,
  ),
  AnswerItemModel(
    title: "Just taking a quick mental break ",
    onpressed: () => debugPrint("Red choice"),
    icon: Icons.local_cafe,
    score: 5,
  ),
  AnswerItemModel(
    title: "Avoiding responsibilities by taking personality quizzes ",
    onpressed: () => debugPrint("White choice"),
    icon: Icons.theater_comedy,
    score: 0,
  ),
  AnswerItemModel(
    title: " In denial that work exists ",
    onpressed: () => debugPrint("Blue choice"),
    icon: Icons.visibility_off,
    score: 0,
  ),
];
