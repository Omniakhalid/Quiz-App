import 'package:flutter/material.dart';
import 'package:task1/loser_page.dart';
import 'package:task1/winner_page.dart';

import 'exam_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamPage(),
      routes: {
        ExamPage.route_name: (buildContext)=>ExamPage(),
        WinnerPage.route_name: (buildContext)=>WinnerPage(),
        LoserPage.route_name: (buildContext)=>LoserPage(),
      },
      initialRoute: ExamPage.route_name,
    );

  }
}

