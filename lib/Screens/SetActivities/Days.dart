import 'package:app/Reusable/Activity_Component.dart';
import 'package:app/Screens/SetActivities/EditDayActivitiy.dart';
import 'package:flutter/material.dart';
import "../../Reusable/UiColor.dart";
import "./Script.dart";
import '../../Reusable/Index.dart';
 

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  String screen = "list";
  List<Map> activities_list = [
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"un finished"
    },
  ];
  List<String> days = ["SUNDAY","MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY","SATURDAY"];
  String day = "";
  Container dayList(){
    List<Widget> days = daysOfWeek.map((item)=>
      ExpansionTile(
          onExpansionChanged: (boo){
            print("calling");
            setState(() {
              day = item;
            });
          },
          title:Text(item),
          children: <Widget>[
            
          ]
          ),
    ).toList();
    return Container(
      child: Column(
        children: days,
      ),
    );
  }
  List<Widget> activities(){
      List<Widget> individual_activities = activities_list.map((item)=>
          list(context,activities_list[0],"edit",(){
            setState(() {
              screen = 'edit';
            });
          },true,false,true)
      ).toList();
      return individual_activities;
  }
  Container dayComponent(){
    return Container(
      color: whiteColor,
      height: Index.height(context, 10),
      child:ExpansionTile(
          onExpansionChanged: (bool currentState){
            setState(() {
              day = "";
            });
          },
           initiallyExpanded: true,
           title: Text(day,style: TextStyle(color: frontColor)),
           children: <Widget>[
             Container(
               color:whiteColor ,
              height: Index.height(context, 8),
              child: ListView(
                children: activities()
               ),
             ),
           ],
         ),
      );
  }
  Container listOfDays(){
    return  Container(
           height: Index.height(context, 10),
           child: Column(
             children: <Widget>[
               Column(
                 children:<Widget>[
                   dayList()
                 ]
               ),
               FlatButton(
                 onPressed:(){
                   setState(() {
                     screen = "add";
                   });
                 },
                 child:Text("ADD",
                  style:TextStyle(
                   color:whiteColor
                 )),
                 color:frontColor
               )
           ],
           ),
       );
  }
  viewChangeHandler(){
    setState((){
      screen = "list";
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget  view;
    switch (screen) {
      case 'list':
        Widget section = day == '' ? listOfDays():dayComponent();
        view = section;
        break;
      case 'add':
        view = Eda(viewChangeHandler);
        break;
      case 'edit':
        view = Eda(viewChangeHandler);
        break;
      default:
        break;
    }
    return view;
    
  }
}

