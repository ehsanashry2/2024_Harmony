class SurveyQuestion {
  final String question;
  final List<SurveyOption> options;
  String? imagePath;

  SurveyQuestion({
    required this.question,
    required this.options,
    this.imagePath,
  });
}

class SurveyOption {
  final String optionText;
  final int score;

  SurveyOption({
    required this.optionText,
    required this.score,
  });
}

enum OCDLevel {
  none,
  mild,
  moderate,
  severe,
}

// List<SurveyQuestion> surveyQuestions = [
//   SurveyQuestion(
//     question: 'How much time do you spend on obsessions?',
//     options: [
//       SurveyOption(optionText: 'None', score: 0),
//       SurveyOption(optionText: '0-1 Hour/daily', score: 1),
//       SurveyOption(optionText: '1-3 Hours/daily', score: 2),
//       SurveyOption(optionText: '3-8 Hours/daily', score: 3),
//       SurveyOption(optionText: 'More than 8 hours daily', score: 4),
//     ],
//     imagePath: 'assets/images/6.png',
//   ),
//   SurveyQuestion(
//     question:
//         'To what extent do obsessions conflict with your daily activities?',
//     options: [
//       SurveyOption(optionText: 'No conflict', score: 0),
//       SurveyOption(optionText: 'Mild conflict', score: 1),
//       SurveyOption(optionText: 'Clear conflict', score: 2),
//       SurveyOption(optionText: 'Causes daily disruption', score: 3),
//       SurveyOption(optionText: 'Severe conflict', score: 4),
//     ],
//     imagePath: 'assets/images/7.png',
//   ),
//   SurveyQuestion(
//     question: 'How much distress do you feel due to your obsessive thoughts?',
//     options: [
//       SurveyOption(optionText: 'None', score: 0),
//       SurveyOption(optionText: 'Mild', score: 1),
//       SurveyOption(optionText: 'Moderate', score: 2),
//       SurveyOption(optionText: 'Severe', score: 3),
//       SurveyOption(optionText: 'Causes persistent impairment', score: 4),
//     ],
//     imagePath: 'assets/images/8.png',
//   ),
//   SurveyQuestion(
//     question: 'What is your resistance to obsessions?',
//     options: [
//       SurveyOption(optionText: 'Always trying', score: 0),
//       SurveyOption(optionText: 'Trying most of the time', score: 1),
//       SurveyOption(optionText: 'Trying occasionally', score: 2),
//       SurveyOption(optionText: 'Rarely trying', score: 3),
//       SurveyOption(optionText: 'Never trying', score: 4),
//     ],
//     imagePath: 'assets/images/9.png',
//   ),
//   SurveyQuestion(
//     question: 'How much control do you have over obsessions?',
//     options: [
//       SurveyOption(optionText: 'Complete control', score: 0),
//       SurveyOption(optionText: 'Almost complete control', score: 1),
//       SurveyOption(optionText: 'Moderate control', score: 2),
//       SurveyOption(optionText: 'Limited control', score: 3),
//       SurveyOption(optionText: 'No control', score: 4),
//     ],
//     imagePath: 'assets/images/10.png',
//   ),
//   SurveyQuestion(
//     question: 'How much time is spent on compulsive actions?',
//     options: [
//       SurveyOption(optionText: 'None', score: 0),
//       SurveyOption(optionText: '0-1 Hour/daily', score: 1),
//       SurveyOption(optionText: '1-3 Hours/daily', score: 2),
//       SurveyOption(optionText: '3-8 Hours/daily', score: 3),
//       SurveyOption(optionText: 'More than 8 hours daily', score: 4),
//     ],
//     imagePath: 'assets/images/11.png',
//   ),
//   SurveyQuestion(
//     question:
//         'To what extent do compulsive thoughts conflict with daily activities, social life, and work?',
//     options: [
//       SurveyOption(optionText: 'No conflict', score: 0),
//       SurveyOption(optionText: 'Slight conflict', score: 1),
//       SurveyOption(optionText: 'Moderate conflict', score: 2),
//       SurveyOption(optionText: 'Partial conflict', score: 3),
//       SurveyOption(optionText: 'Severe conflict', score: 4),
//     ],
//     imagePath: 'assets/images/12.png',
//   ),
//   SurveyQuestion(
//     question:
//         'How much distress do you feel if prevented from engaging in compulsive activities?',
//     options: [
//       SurveyOption(optionText: 'None', score: 0),
//       SurveyOption(optionText: 'Mild', score: 1),
//       SurveyOption(optionText: 'Moderate', score: 2),
//       SurveyOption(optionText: 'Severe', score: 3),
//       SurveyOption(optionText: 'Causes persistent impairment', score: 4),
//     ],
//     imagePath: 'assets/images/13.png',
//   ),
//   SurveyQuestion(
//     question:
//         'How much effort do you make to resist engaging in compulsive acts?',
//     options: [
//       SurveyOption(optionText: 'Always trying', score: 0),
//       SurveyOption(optionText: 'Trying most of the time', score: 1),
//       SurveyOption(optionText: 'Trying occasionally', score: 2),
//       SurveyOption(optionText: 'Rarely trying', score: 3),
//       SurveyOption(optionText: 'Never trying', score: 4),
//     ],
//     imagePath: 'assets/images/14.png',
//   ),
//   SurveyQuestion(
//     question: 'What is your level of control over your compulsive behaviors?',
//     options: [
//       SurveyOption(optionText: 'Complete control', score: 0),
//       SurveyOption(optionText: 'Almost complete control', score: 1),
//       SurveyOption(optionText: 'Moderate control', score: 2),
//       SurveyOption(optionText: 'Limited control', score: 3),
//       SurveyOption(optionText: 'No control', score: 4),
//     ],
//     imagePath: '',
//   ),
//   // Add more survey questions as needed
// ];
