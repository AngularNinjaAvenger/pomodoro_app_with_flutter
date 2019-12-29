import 'package:flutter/material.dart';
import "../../Reusable/UiColor.dart";
import "../../Reusable/Index.dart";
import "../../Navigation/Navigation.dart";
import '../../Reusable/Activity_Component.dart';

class Record extends StatefulWidget {
  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
  List<Map> items = [
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"finished"
    },
  ];

  void buttonHandler(){

  }
  @override
  Widget build(BuildContext context) {
    print(items[0]["completed"]);
    return Container(
            width:Index.width(context, 10),
            height:Index.height(context, 10),
            child:ListView(
              children: <Widget>[
              for(Map item in items)list(context,items[0],item["completed"],buttonHandler,false,true,item["completed"] == "finished" ? true:false)
              ],
            )
          );
  }
}