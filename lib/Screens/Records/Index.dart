import 'package:app/Screens/Records/Record.dart';
import 'package:app/Screens/Records/Records.dart';
import 'package:flutter/material.dart';

 
class RecordScreen extends StatefulWidget {
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  String screen = "record";
  setScreen(Map day){
    setState((){
      screen = "records";
    });
    print(day);
  }
  @override
  Widget build(BuildContext context) {
    Widget section;
    switch (screen) {
      case "records":
        section = Record();
        break;
      case "record":
        section = Records(setScreen);
        break;
      default:
        section=Text("Loading");
        break;
    }
    return section;
  }
}