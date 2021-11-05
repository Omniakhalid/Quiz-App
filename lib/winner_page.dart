import 'package:flutter/material.dart';
import 'package:task1/exam_page.dart';
class WinnerPage extends StatelessWidget {
  static const String route_name = "WinnerPage";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/win.jpg'),
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
