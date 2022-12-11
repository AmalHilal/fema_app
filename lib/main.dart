import 'package:fema/future/view/screens/home_page.dart';
import 'package:fema/future/view/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'future/controller/data/provider.dart';
import 'future/view/screens/add_transaction.dart';
import 'future/view/screens/profile.dart';
import 'future/view/screens/splash.dart';
import 'future/view/screens/transactions.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>ItemProvider(),
      child: MaterialApp(
        routes: {"/screen1":(context)=>Screen1(),
          "/homePage":(context)=>HomePage(),
          "/transaction":(context)=>TransAction(),
          "/addTransaction":(context)=>AddTransaction(),
          "/profile":(context)=>Profile()
        },
        home: SplashScreen() ,
      ),
    );
  }

}







