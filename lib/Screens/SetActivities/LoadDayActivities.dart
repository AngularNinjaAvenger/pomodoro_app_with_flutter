// "BEFORE EDIT STARTED"

import 'package:flutter/material.dart';
import "./Script.dart";
import "../../Reusable/UiColor.dart";
import "../../Reusable/Index.dart";
import "../../Reusable/Activity_Component.dart";
import "./temp.dart";




class Lda extends StatefulWidget {
  @override
  _LdaState createState() => _LdaState();
}


class _LdaState extends State<Lda> {
   List<Map> items = [
    {
      "Activitiy Name":"PROGRAMMg CLASS",
      "Time":"9:20am : 10:40pm",
      "TOTAL POMODORO SESSION":"10",
      "POMODORO SESSION HELD":"2",
      "completed":"uncompleted"
    },
  ];
  void buttonHandler(){
    print("this is the button handler");
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            print("tap is being called");
            Methods.selectedDay = "node";
          },
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                margin:EdgeInsets.only(top: 20),
                color:frontColor,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("SUNDAY",
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor
                    ),),
                    Icon(
                        Icons.arrow_drop_down,
                        size:40,
                        color:whiteColor
                    )
                  ],
                ),
              ),
              for(Map item in items) list(context,item,"edit",buttonHandler,true,false,true),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  child: FlatButton(
                  onPressed: (){},
                  child: Text("ADD",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 18
                                ),),
                  color: frontColor,
                ),
              )
            ],
          )
    );
      
  }
}
