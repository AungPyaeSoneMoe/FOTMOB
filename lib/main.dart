import 'package:flutter/material.dart';
import 'package:fotmob/Home_screen/Home.dart';

import 'Leagues/League.dart';
import 'Matches/Matche.dart';
import 'Matches/Europaleague.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // initialRoute: 'Home/Home',
      // onGenerateRoute: (Route) {
      //   switch (Route.name) {
      //     case 'Home/Home':
      //       return MaterialPageRoute(builder: (_) => Home());
      //     case 'Home/Matches':
      //       return MaterialPageRoute(builder: (_) => Matches());
      //     case 'Home/Europa':
      //       return MaterialPageRoute(builder: (_) => League());
      //     case 'Home/Europa':
      //       return MaterialPageRoute(builder: (_) => Europa());
      //   }

      //   return null;
      // }
     
      home: Matches(),
    
    );
  }
}
