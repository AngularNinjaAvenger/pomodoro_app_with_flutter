import 'package:flutter/material.dart';
import "../Reusable/UiColor.dart";
import "../Script/GreetScript.dart";
class Greet extends StatefulWidget {
  Greet({Key key}) : super(key: key);

  @override
  _GreetState createState() => _GreetState();
}
class _GreetState extends State<Greet> {
  @override
  Widget build(BuildContext context) {
    return Container(  
    color:Colors.white,
    padding: EdgeInsets.all(0.5),
    margin:EdgeInsets.all(10),
    height: 60,
    child: Center(
        child: Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
     Text(
       "$greeting",
        style: TextStyle(
          fontSize: 20,
          color: frontColor
        ),
     ),
      Icon(
          Icons.snooze,
          size:40.1,
          color:frontColor
      )
    ],
    ),
    ),
    );    

  }
}

// 