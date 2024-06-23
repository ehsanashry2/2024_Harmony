import 'package:flutter/material.dart';
import 'package:ocd/screens/home/Home/layoutscreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ocd/model/surveymodel.dart';
import 'package:ocd/widget/authWidget/custombutton.dart';

class Congratulations extends StatelessWidget {
  final OCDLevel level;
  final int totalScore;
  final int levelNumber;

  const Congratulations({
    Key? key,
    required this.level,
    required this.totalScore,
    required this.levelNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.8953,
          colors: [
            Color(0xFFE5D1FA), // Start color
            Color(0xFFAA77FF), // End color
          ],
          stops: [0, 1],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Congratulations',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'WorkSans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Text(
              'You have completed the survey\n               successfully',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'WorkSans',
                color: Colors.white,
              ),
            ),
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/images/15.png'),
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 60),
                  child: const Image(
                    image: AssetImage('assets/images/16.png'),
                    fit: BoxFit.fill,
                    // width: 190,
                    // height: 190,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 450,
                  ),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 20,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CustomButton(
                    buttonText: "Show Result",
                    onPressed: () => _showResultDialog(context),
                    topMargin: 0,
                    leftMargin: 33.0,
                    rightMargin: 33.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 530,
                    left: 130,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LayOutScreen()),
                      );
                    },
                    child: const Text(
                      'Go to home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "WorkSans",
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showResultDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(16.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 15.0,
                animation: true,
                percent: getPercentValue(level),
                center: Text(
                  "$totalScore Points",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.grey.shade600,
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.grey.shade300,
                progressColor: getLevelColor(level),
                startAngle: 180.0, // Make it a semi-circle
              ),
              const SizedBox(height: 20),
              Text(
                "Level $levelNumber",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: getLevelColor(level),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                getLevelText(level),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: getLevelColor(level),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                getDescription(level),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                buttonText: "Go to home",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LayOutScreen()),
                  );
                },
                topMargin: 0,
                leftMargin: 33.0,
                rightMargin: 33.0,
              ),
            ],
          ),
        );
      },
    );
  }

  double getPercentValue(OCDLevel level) {
    switch (level) {
      case OCDLevel.none:
        return 0.0;
      case OCDLevel.mild:
        return 0.25; // تعديل ليتناسب مع عدد الأسئلة
      case OCDLevel.moderate:
        return 0.5; // تعديل ليتناسب مع عدد الأسئلة
      case OCDLevel.severe:
        return 1.0;
      default:
        return 0.0;
    }
  }

  String getLevelText(OCDLevel level) {
    switch (level) {
      case OCDLevel.none:
        return "No symptoms";
      case OCDLevel.mild:
        return "Mild symptoms";
      case OCDLevel.moderate:
        return "Moderate symptoms";
      case OCDLevel.severe:
        return "Severe symptoms";
      default:
        return "";
    }
  }

  Color getLevelColor(OCDLevel level) {
    switch (level) {
      case OCDLevel.none:
        return const Color(0xFFBE8BFF);
      case OCDLevel.mild:
        return const Color(0xFFAA69FF);
      case OCDLevel.moderate:
        return const Color(0xFFA157FF);
      case OCDLevel.severe:
        return const Color(0xFF7F1CFD);
      default:
        return const Color(0xFFBE8BFF);
    }
  }

  String getDescription(OCDLevel level) {
    switch (level) {
      case OCDLevel.none:
        return "No symptoms";
      case OCDLevel.mild:
        return "Mild symptoms that may interfere with your life noticeably (mild severity)";
      case OCDLevel.moderate:
        return "Moderate symptoms that may interfere with your life noticeably (moderate severity)";
      case OCDLevel.severe:
        return "Severe symptoms that interfere with your life significantly (severe severity)";
      default:
        return "";
    }
  }
}



/*Color getLevelColor(OCDLevel level) {
    switch (level) {
      case OCDLevel.none:
        return Color(0xFFBE8BFF);
      case OCDLevel.mild:
        return Color(0xFFAA69FF);
      case OCDLevel.moderate:
        return Color(0xFFA157FF);
      case OCDLevel.severe:
        return Color(0xFF7F1CFD);
      default:
        return Color(0xFFBE8BFF);
    }
  }*/

