import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocd/cubits/auth_cubit/auth_cubit.dart';
import 'package:ocd/screens/notes/1233.dart';
//import 'package:ocd/screens/home/STEPPERWEDGET/Mytimeline.dart';
import 'package:ocd/widget/home/days.dart';
import 'package:ocd/widget/home/startsurveycart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 50.0),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is LoginSuccess) {
                  return Text(
                      "Hello,${BlocProvider.of<AuthCubit>(context).userModel?.name ?? 'Omar'} ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'workSans',
                      ));
                } else {
                  return Text(
                      "Hello,${BlocProvider.of<AuthCubit>(context).userName ?? 'Omar'} ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'workSans',
                      ));
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Days(),
          ),
          SurveyCart(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: const Text(
              "Omar's Plan",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Image.asset(
                'assets/images/Animation .gif', // تأكد من وضع مسار الصورة الصحيح
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10),
              Text(
                "Coming Soon",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Exciting new features to help you better manage your OCD.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          //PlanScreen
        ],
      ),
    );
  }
}
