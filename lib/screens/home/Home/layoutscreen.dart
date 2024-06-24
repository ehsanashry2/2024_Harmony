import 'package:flutter/material.dart';
import 'package:ocd/screens/discover.dart';
import 'package:ocd/screens/home/Home/Homepage.dart';
import 'package:ocd/screens/home/Home/Profill.dart';
import 'package:ocd/screens/home/Home/soon.dart';
import 'package:ocd/screens/notes/1233.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({Key? key}) : super(key: key);

  @override
  _LayOutScreenState createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    const Discover(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? Image.asset(
                      "assets/images/home.png",
                      width: 35,
                      height: 35,
                    )
                  : Image.asset(
                      "assets/images/home grey.png",
                      width: 35,
                      height: 35,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? Image.asset(
                      "assets/images/discover pur.png",
                      width: 60,
                      height: 60,
                    )
                  : Image.asset(
                      "assets/images/discover.png",
                      width: 60,
                      height: 60,
                    )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? Image.asset(
                      "assets/images/profill pur.png",
                      width: 35,
                      height: 35,
                    )
                  : Image.asset(
                      "assets/images/profill.png",
                      width: 35,
                      height: 35,
                    )),
        ],
      ),
    );
  }
}


/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocd/screens/discover.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'Homepage.dart';
import 'Profill.dart';

// ignore: must_be_immutable
class LayOutScreen extends StatelessWidget {
  int pageIndex = 0;

  LayOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        screens: screens(),
        items: navBarItem(),
        navBarStyle: NavBarStyle.style9,
      ),
    );
  }

  List<Widget> screens() {
    return [
      const HomePage(),
      const Discover(),
      const Profil(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: IconButton(
            onPressed: () {},
            icon: pageIndex == 0
                ? Image.asset(
              "assets/images/home.png",
              width: 30,
              height: 30,
            )
                : Image.asset(
              "assets/images/home grey.png",
              width: 30,
              height: 30,
            )),
        title: "Home",
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
                height: 20,
                width: 25,
                child: Image.asset(
                  "assets/images/discover.png",
                  width: 35,
                  height: 35,
                )),
          ],
        ),
        title: "Discover",
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            SizedBox(
                height: 20,
                width: 25,
                child: Image.asset(
                  "assets/images/profill.png",
                  width: 30,
                  height: 30,
                )),
          ],
        ),
        title: "profil",
        activeColorPrimary: Colors.grey,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        activeColorSecondary: Colors.purple,
      ),
    ];
  }
}*/
