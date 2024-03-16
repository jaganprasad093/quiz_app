import 'package:flutter/material.dart';
import 'package:quis_app/controller/home_screen_controller/home_screen_controller.dart';
import 'package:quis_app/core/constants/color_constants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  int? selectedAnsIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryGrey.withOpacity(.4)),
                child: Text(
                  HomescreenController.questions[questionIndex].Question,
                  style: TextStyle(color: ColorConstants.primaryWhite),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    HomescreenController
                        .questions[questionIndex].optionallist.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnsIndex == null) {
                              selectedAnsIndex = index;
                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedAnsIndex == index
                                          ? (selectedAnsIndex ==
                                                  HomescreenController
                                                      .questions[questionIndex]
                                                      .correctAnswerIndex
                                              ? Colors.green
                                              : Colors.red)
                                          : selectedAnsIndex != null &&
                                                  index ==
                                                      HomescreenController
                                                          .questions[
                                                              questionIndex]
                                                          .correctAnswerIndex
                                              ? Colors.green
                                              : ColorConstants.primaryGrey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    HomescreenController
                                        .questions[questionIndex]
                                        .optionallist[index],
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.radio_button_off,
                                    color: ColorConstants.primaryRed,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  selectedAnsIndex = null;
                  if (questionIndex <
                      HomescreenController.questions.length - 1) {
                    questionIndex++;
                    setState(() {});
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryBlue.withOpacity(.6)),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Next",
                    style: TextStyle(
                        color: ColorConstants.primaryWhite, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
