import 'package:flutter/material.dart';
import "../../Reusable/UiColor.dart";
import "../../Reusable/Index.dart";
import "../../Navigation/Navigation.dart";

class Records extends StatefulWidget {
  dynamic screenHandler;
  Records(screenHandler){
    this.screenHandler = screenHandler;
  }
  @override
  _RecordsState createState() => _RecordsState(screenHandler);
}

class _RecordsState extends State<Records> {
  List<String> months = ["January","Febuary","March","April","May","June","July","August","Setember","October","Novemember","December"];
  List<String> days = ["day 1","day 2","day 3","day 4","day 5","day 6","day 7"];
  List<String> weeks = ["week 1","week 2","weeek 3","week 4"];
  String month;
  String week;
  String day;
  dynamic screenHandler;
  _RecordsState(screenHandler){
    this.screenHandler = screenHandler;
  }
  GestureDetector selectedMonth(String theMonth){
    bool selectedMonth = false;
    return GestureDetector(
      child: ExpansionTile(
            backgroundColor: whiteColor,
            onExpansionChanged: (item){
              selectedMonth = item;
              month = theMonth;
            },
            title: Text(theMonth),
            children:selectedWeek(theMonth)
          ),
    );
  }
  List<Widget> selectedWeek(String theMonth){
    List<Widget> widgets = weeks.map((names){
        bool show = false;
        return new ExpansionTile(
          backgroundColor: whiteColor,
          onExpansionChanged: (item){
              show = item;
              week = names;
          },
          title: Text(names),
          children: selectedDays(theMonth,names)
        );
      }
    ).toList();
    return widgets;
  }
  List<Widget> selectedDays(String theMonth,String names){
    List<Widget> dayss = days.map((item)=> 
        new ExpansionTile(
          onExpansionChanged: (boo){
              month = theMonth;
              week = names;
              day = item;
              screenHandler(
                {
                 "month":month,
                "week":week,
                "day":day 
                },
              );
          },
        title:Text(item)
          )
      ).toList();
    return dayss;
  }
  
  @override
  Widget build(BuildContext context) {
    var body2 = Container(
              height:Index.height(context, 10),
              width:Index.width(context, 10),
              child:ListView(
                children: <Widget>[
                      for(String i in months)selectedMonth(i),
                ],
                ),
          );
        return body2;
  }
}
