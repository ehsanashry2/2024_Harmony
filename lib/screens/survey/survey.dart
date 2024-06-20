import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocd/controller/surveycontroller.dart';
import 'package:ocd/widget/serveywidget/customsurveybutton.dart';
import 'package:ocd/widget/serveywidget/question.dart';
import '../../widget/serveywidget/buttomsurvey.dart';

// ignore: must_be_immutable
class Survey extends StatelessWidget {
  Survey({super.key});
  final SurveyController controller = Get.put(SurveyController());

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
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 37,
                      margin: EdgeInsets.only(left: 17), // المسافة من الناحية الشمالية
                      padding: EdgeInsets.all(4), // الحواف الداخلية للـ Container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // تعيين نصف قطر الحواف المستديرة
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Center( // وضع الأيقونة في وسط الـ Container
                        child: IconButton(
                          padding: EdgeInsets.zero, // إزالة الحشو الافتراضي للأيقونة
                          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFAA77FF)),
                          onPressed: () {
                            controller.previousQuestion();
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // تعيين نصف قطر الحواف المستديرة
                        child: LinearProgressIndicator(
                          value: controller.currentQuestionIndex.value /
                              (controller.surveyquestions.length - 1),
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFAA77FF)),
                          minHeight: 13, // ارتفاع الـ LinearProgressIndicator
                        ),
                      ),

                    ),
                  ],
                ),


                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Question(
                            questions: controller
                                .surveyquestions[
                            controller.currentQuestionIndex.value]
                                .question,
                          ),
                        ),
                      ),
                      if (controller.currentQuestionIndex.value !=
                          controller.surveyquestions.length - 1)
                        Image.asset(
                          controller.surveyquestions[
                          controller.currentQuestionIndex.value]
                              .imagePath ??
                              '',
                          width: 190,
                          height: 190,
                          fit: BoxFit.fill,
                        ),
                      Buttomservey(
                        options: controller
                            .surveyquestions[
                        controller.currentQuestionIndex.value]
                            .options,
                        onPressed: (score) {
                          controller.changeIndex(score);
                        },
                      ),
                      if (controller.currentQuestionIndex.value ==
                          controller.surveyquestions.length - 1)
                        const CustomSurveyButtom()
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}