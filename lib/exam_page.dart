import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:task1/loser_page.dart';
import 'package:task1/winner_page.dart';

class ExamPage extends StatefulWidget {
  static const String route_name = "ExamPage";
  static List<QuestionData> question_data = [
    QuestionData('Have You Ever Wrote a Letter ?', 'Yes'),
    QuestionData('Have You Ever Read a Book ?', 'Yes'),
    QuestionData('Have You Ever Smoked a cigarette ?', 'No'),
    QuestionData('Have You Ever played a Football ?', 'Yes'),
    QuestionData('Have You Ever Swam in a pool ?', 'Yes'),
    QuestionData('Have You Ever cooked fish ?', 'No'),
    QuestionData('Have You Ever Wrote a Book ?', 'No'),
    QuestionData('Have You Ever Washed the Dishes ?', 'Yes'),
  ];

  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int correct_counter = 0, wrong_counter = 0;
  static int randomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Have You Ever",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  ExamPage.question_data[randomIndex].q,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              SizedBox(
              height: 10,
              ),
              Container(
                color: Colors.green,
                child: TextButton(
                    onPressed: () {
                      chooseCorrectAnswerYes();
                      if(wrong_counter + correct_counter == ExamPage.question_data.length)
                      {
                        if(wrong_counter>correct_counter)
                          Navigator.pushNamed(context, LoserPage.route_name);
                        else
                          Navigator.pushNamed(context, WinnerPage.route_name);
                      }
                      randomIndex = Random().nextInt(ExamPage.question_data.length);
                      setState(() {

                      });
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                child: TextButton(
                    onPressed: () {
                      chooseCorrectAnswerNo();
                      if(wrong_counter + correct_counter == ExamPage.question_data.length)
                        {
                          if(wrong_counter>correct_counter)
                            Navigator.pushNamed(context, LoserPage.route_name);
                          else
                            Navigator.pushNamed(context, WinnerPage.route_name);
                        }
                      randomIndex = Random().nextInt(ExamPage.question_data.length);
                      setState(() {

                      });
                    },
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
        ],
      )),
    );
  }

  void chooseCorrectAnswerYes(){
    if(ExamPage.question_data[randomIndex].A=='Yes')
      correct_counter++;
    else if(ExamPage.question_data[randomIndex].A=='No')
      wrong_counter++;
  }

  void chooseCorrectAnswerNo(){
    if(ExamPage.question_data[randomIndex].A=='No')
      correct_counter++;
    else if(ExamPage.question_data[randomIndex].A=='Yes')
      wrong_counter++;
  }

  bool lose_or_win(){
    if(wrong_counter>correct_counter)
      return false;
    else
      return true;
  }
}

class QuestionData {
  String q;
  String A;

  QuestionData(this.q, this.A);
}
