import 'package:flutter/material.dart';

import 'exam_page.dart';
class LoserPage extends StatelessWidget {
  static const String route_name = "LoserPage";
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/loser.jpg'),
            SizedBox(height: 10,),
            Container(
              color: Colors.black,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ExamPage.route_name);
                  },
                  child: Text(
                    'Play Again!',
                    style: TextStyle(color: Colors.white),
                  )),
            ),

          ],
        )
    );
  }
}
