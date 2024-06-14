import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: const Column(
     children: <Widget>[
     Center(
     child: Padding(
     padding: EdgeInsets.only(right: 200,left: 20,top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Hello, Omar ',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'workSans',
                ),
              ),
            ),
           //SizedBox(width: 78),
            Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(right:100,left: 170),
                  child: SizedBox(width: 100,
                    height:100,
                    child: Image(
                        image: AssetImage(
                          'assets/images/home.png',
                        ),
                        //fit: BoxFit.fill
                    ),
                  ),
                ),

              ],




            )
          ]
      )

    ))
       ],



     ),
      bottomNavigationBar:NavigationBar(
       height: 60,
       destinations: const [
         NavigationDestination(
             icon: Icon(Icons.home),
             selectedIcon: Icon(Icons.home),
             label: "Home"),
         NavigationDestination(
             icon: Icon(Icons.account_balance_wallet_sharp),
             selectedIcon: Icon(Icons.account_balance_wallet_sharp),
             label: "Discover"),
         NavigationDestination(
             icon: Icon(Icons.person),
             selectedIcon: Icon(Icons.person),
             label: "Profile"),
       ],
      ),
    );
  }
}
