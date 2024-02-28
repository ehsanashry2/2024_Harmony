import 'package:flutter/material.dart';
import 'package:ocd/features/onboarding/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    color: Color(0xffDCC1FF),
    child: Container(
    width: double.infinity,
    height: 2700,
    margin: EdgeInsets.only(top: 430),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/2.png",),
    fit: BoxFit.fill//fit: BoxFit.fill
    ),

    ) ,

    child: Column(
    children: [
    Container(
    margin: EdgeInsets.only(top: 200),
    child: Text("Welcome \n to your path to \n healing",style: TextStyle(
    color: Color(0xffAA77FF),
    fontSize:60,
    fontWeight: FontWeight.bold
    ), ),
    ),
    Container(
    margin: EdgeInsets.only(top: 1300),
    child:IconButton(
    onPressed: (){
    Navigator.of(context).push (MaterialPageRoute(builder: (context){
    return Page3();
    }));
    },
    icon: Icon(Icons.arrow_forward_ios_rounded, size: 70,
    color:Color(0xffAA77FF),
    ),
    )  ,
    )
    ],
    ),
    ),
    ),



    );
  }
}
