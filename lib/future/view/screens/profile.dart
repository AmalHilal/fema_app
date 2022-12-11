import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber[50],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 50,right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/pp.png",
                    width: 100,
                  ),
                  Text(
                    "A.Hilal",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        letterSpacing: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset("assets/images/E.png",width: 30,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.purple[50],
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          "assets/images/P.png",
                          color: Colors.deepPurple[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Account",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.purple[50],
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          "assets/images/S.png",
                          color: Colors.deepPurple[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.purple[50],
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          "assets/images/SH.png",
                          color: Colors.deepPurple[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Share",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          "assets/images/L.png",
                          color: Colors.red[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
