import 'package:flutter/cupertino.dart';
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
      // appBar: AppBar(
      //   title: const Text(
      //     "Hello, Omar",
      //     style: TextStyle(
      //       //color: Color(0xFF1A1A1A),
      //       fontSize: 25,
      //       fontWeight: FontWeight.w500,
      //       fontFamily: 'workSans',
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
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
            enableFeedback: false,
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
                  width: 45,
                  height: 45,
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
}
