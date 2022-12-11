import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
     Timer(
         Duration(
       seconds: 4
     ), () {
           Navigator.of(context).pushReplacementNamed("/screen1");
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/m.png",width: 200,fit: BoxFit.cover,),

            Image.asset("assets/images/l.gif",width: 200,)
          ],
        ),
      ),
    );
  }
}