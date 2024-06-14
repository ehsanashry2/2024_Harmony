import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'endchild.dart';
class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool ispast;
  final bool isffff;
  final  eventcard;
  const MyTimeLineTile({super.key,required this.isFirst,required this.isLast,required this.ispast,required this.eventcard,required this.isffff});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: ispast?  const Color(0xFFAA77FF):Colors.deepPurple.shade100),
        indicatorStyle: IndicatorStyle(
          width: 20,
          color: ispast?  const Color(0xFFAA77FF):Colors.deepPurple.shade100,
        iconStyle: IconStyle(
            iconData: Icons.done,
            color:Colors.white

        )
        ),
        endChild: Eventcard(

          ispast: ispast,
          child: eventcard,
          containercolor:const Color(0xFFE3DFFD),
        ),

      ),
    );
  }
}
