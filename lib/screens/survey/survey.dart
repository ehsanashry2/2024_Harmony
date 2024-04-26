import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocd/controller/surveycontroller.dart';
import 'package:ocd/widget/serveywidget/customsurveybutton.dart';
import 'package:ocd/model/surveymodel.dart';
import 'package:ocd/widget/serveywidget/question.dart';
import '../../widget/serveywidget/buttomsurvey.dart';

// ignore: must_be_immutable
class Survey extends StatelessWidget {
  Survey({super.key});
  SurveyController controller = Get.put(SurveyController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE3DFFD),
            Colors.white, // Center color
            Color(0xFFE3DFFD),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: GetBuilder<SurveyController>(builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Question(
                    questions: controller
                        .surveyquestions[controller.currentQuestionIndex.value]
                        .question,
                  ),
                )),
                if (controller.currentQuestionIndex !=
                    surveyQuestions.length - 1)
                  Image(
                      image: AssetImage(controller
                              .surveyquestions[
                                  controller.currentQuestionIndex.value]
                              .imagePath ??
                          ''),
                      width: 190,
                      height: 190,
                      fit: BoxFit.fill),
                Buttomservey(
                  options: controller
                      .surveyquestions[controller.currentQuestionIndex.value]
                      .options,
                  onPressed: (score) {
                    controller.changeIndex(
                        score); // Correctly pass the selected option's score
                  },
                ),
                if (controller.currentQuestionIndex ==
                    surveyQuestions.length - 1)
                  const CustomSurveyButtom()
              ],
            );
          }),
        ),
      ),
    );
  }
}
