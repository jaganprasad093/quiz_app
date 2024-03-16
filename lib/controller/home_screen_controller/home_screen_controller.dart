import 'package:quis_app/core/model/quiz_screen_model.dart';

class HomescreenController {
  static List<Questionmodel> questions = [
    Questionmodel(
      Question: "What is the capital of France?",
      optionallist: ["London", "Paris", "Berlin", "Rome"],
      correctAnswerIndex: 1,
    ),
    Questionmodel(
      Question: "Which planet is known as the Red Planet?",
      optionallist: ["Venus", "Jupiter", "Mars", "Saturn"],
      correctAnswerIndex: 2,
    ),
    Questionmodel(
      Question: "What is the chemical symbol for water?",
      optionallist: ["H2O", "CO2", "O2", "N2"],
      correctAnswerIndex: 0,
    ),
    Questionmodel(
      Question: "What is the currency of Japan?",
      optionallist: ["Yuan", "Euro", "Dollar", "Yen"],
      correctAnswerIndex: 3,
    ),
    Questionmodel(
      Question: "What is the tallest mountain in the world?",
      optionallist: ["Mount Everest", "K2", "Kangchenjunga", "Makalu"],
      correctAnswerIndex: 0,
    ),
    Questionmodel(
      Question: "Which bird can't fly?",
      optionallist: ["Penguin", "Parrot", "Eagle", "Ostrich"],
      correctAnswerIndex: 0,
    ),
  ];
}
