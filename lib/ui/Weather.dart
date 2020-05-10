import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Weather extends StatelessWidget {
  Widget date = Container(
    child: Text(
      DateFormat("MMMM d, H:m").format(DateTime.now()),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: Colors.white
      ),

    ),
  );
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(50.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         date
       ],
     ),
    );
  }
}