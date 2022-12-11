import 'package:flutter/material.dart';

import '../screens/add_transaction.dart';
import '../screens/transactions.dart';

class MyBNav extends StatefulWidget {
  @override
  State<MyBNav> createState() => _MyBNavState();
}

class _MyBNavState extends State<MyBNav> {
  int currentTab = 0;
 // to keep track of active tab index
  final List<Widget> screens = [
    AddTransaction(),
    TransAction(),
    AddTransaction(),
    TransAction(),
  ];
 // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = AddTransaction();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          AddTransaction(); // if user taps on this dashboard tab will be active
                      currentTab = 0;
                      Navigator.of(context).pushNamed("/homePage");
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          AddTransaction(); // if user taps on this dashboard tab will be active
                      currentTab = 1;
                      Navigator.of(context).pushNamed("/transaction");
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.trending_up_sharp,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Transaction',
                        style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            // Right Tab bar icons

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          AddTransaction(); // if user taps on this dashboard tab will be active
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pie_chart,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Statitics',
                        style: TextStyle(
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          AddTransaction(); // if user taps on this dashboard tab will be active
                      currentTab = 3;
                      Navigator.of(context).pushNamed("/profile");
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

