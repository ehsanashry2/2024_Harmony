import 'package:flutter/material.dart';

class LifeStyleCate extends StatefulWidget {
  const LifeStyleCate({super.key});

  @override
  State<LifeStyleCate> createState() => _LifeStyleCateState();
}

class _LifeStyleCateState extends State<LifeStyleCate> {
  @override
  Widget build(BuildContext context) {
    bool click = false;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Life Style')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          //padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0x8AD9D9D9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:
                      (click == false) ? const Color(0x8FFFFFFF) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => setState(() {
                    click = !click;
                    print("Click is now: $click");
                  }),
                  child: const Text(
                    'Habit',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:
                      (click == false) ? const Color(0x8FFFFFFF) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Memories',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'WorkSans',
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:
                      (click == false) ? const Color(0x8FFFFFFF) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'progress',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'WorkSans',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        // GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 1.5)
        //         itemBuilder:(context, index) {

        //         },
        //         )
      ]),
    );
  }
}
