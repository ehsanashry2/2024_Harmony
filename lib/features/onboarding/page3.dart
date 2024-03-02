import 'package:flutter/material.dart';
import 'package:ocd/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 2700,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/3.png"),
                fit: BoxFit.fill //fit: BoxFit.fill
                )),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 200),
              child: const Text(
                "Let’s Start \n Your \n Journey",
                style: TextStyle(
                    color: Color(0xffAA77FF),
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1300),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Page4();
                  }));
                },
                icon: const Icon(
                  Icons.keyboard_arrow_up_outlined,
                  size: 70,
                  color: Color(0xffAA77FF),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
