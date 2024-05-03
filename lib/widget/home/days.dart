import 'package:flutter/material.dart';

class Days extends StatelessWidget {
  const Days({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> days = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];
    int currentDayOfWeek = DateTime.now().weekday;
    List<String?> images = List.generate(7, (index) => null);
    images[currentDayOfWeek - 1] = 'assets/images/fire.png';
    return Expanded(
      child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(days[index],
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'WorkSans',
                        color: Colors.black,
                      )), // Text
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    width: 43,
                    height: 43,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE5D1FA),
                      shape: BoxShape.circle,
                    ),
                    child: images[index] != null
                        ? Image.asset(images[index]!, width: 20, height: 20)
                        : null,
                  ),
                ],
              );
            },
          )),
    );
  }
}