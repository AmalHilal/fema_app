import 'package:fema/future/view/screens/transactions.dart';
import 'package:fema/future/view/widget/navigation_bar.dart';
import 'package:flutter/material.dart';

import 'add_transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xccbbb0b0),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text("MONDAY 9 \nNOVEMEBER"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset(
                                "assets/images/e.jpg",
                                fit: BoxFit.fill,
                              ),
                              backgroundColor: Colors.indigo,
                              radius: 23,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Amal")
                          ],
                        ),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Account Balance",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "9500.00",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 70,
                                height: 70,
                                child: Image.asset(
                                  "assets/images/t.png",
                                  width: 5,
                                  height: 5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Income",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "25000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27),
                                ),
                              ],
                            )
                          ],
                        ),
                        width: 180,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff00A86B)),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 70,
                                height: 70,
                                child: Image.asset(
                                  "assets/images/g.png",
                                  width: 10,
                                  height: 10,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Expenses",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "25000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27),
                                ),
                              ],
                            )
                          ],
                        ),
                        width: 180,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffFD3C4A)),
                      )
                    ],
                  ),
                )
              ],
            ),
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffddd0c0),
                  Color(0xF8EDD8),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Today",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    "Week",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Month",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Year",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Recent Transaction",style: TextStyle(fontSize: 17),),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/transaction");
                  },
                  child: Text("View All",style: TextStyle(fontSize: 17),)
              )
            ],
          )
        ],
      ),
          bottomNavigationBar:MyBNav(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed("/addTransaction");
            },
          ),
    ));
  }
}
