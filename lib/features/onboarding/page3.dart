import 'package:flutter/material.dart';
import 'package:ocd/page4.dart';
import 'package:ocd/survey/survey.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xffDCC1FF),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "      Welcome \n to your path to \n        healing",
                  style: TextStyle(
                      color: Color(0xffAA77FF),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //color: const Color(0xffDCC1FF),
                width: double.infinity,
                height: MediaQuery.of(context).size.height/1.5,
                //margin: const EdgeInsets.only(top: 230),
                decoration: const BoxDecoration(
                  color: Color(0xffDCC1FF),
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage("assets/images/3.png",),
                      fit: BoxFit.fill //fit: BoxFit.fill
                  ),
                ),
                child:Padding(
                  padding:EdgeInsets.only(top:MediaQuery.of(context).size.height/2),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Page4();
                      }));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 50,
                      color: Color(0xffAA77FF),
                    ),
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
