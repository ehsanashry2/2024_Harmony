import 'package:flutter/cupertino.dart';
class Eventcard extends StatelessWidget {
  final bool ispast;
  final child;
  final Color containercolor;
  const Eventcard({
    super.key,
    required this.ispast,
    required this.child,
    required this.containercolor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
