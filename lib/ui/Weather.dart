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

  Widget tempSection = Container(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "20",
          style: TextStyle(
            fontSize: 60.0,
          ),
        ),
        Expanded(child: Container(
          padding: EdgeInsets.only(
            top: 12.0,
          ),
          margin: EdgeInsets.only(
            left: 6.0,
          ),
          child: Text(
            "\u2103",
            style: TextStyle(
              fontSize: 24.0
            ),
          ),
        ),),
        Image.asset(
          "assets/img/cloudy.png",
          width: 100.00,
          height: 100.00,
          fit: BoxFit.cover,
        )
      ],
    ),
  );

  Widget descriptionSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Dhaka",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        Text(
          "Cloudy",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white
          ),
        ),
      ],
    ),
  );


  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(50.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         date,
         tempSection,
         descriptionSection
       ],
     ),
    );
  }
}