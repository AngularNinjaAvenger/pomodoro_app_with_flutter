import 'package:flutter/material.dart';
import 'package:app/Reusable/UiColor.dart';
import 'package:app/Reusable/Index.dart';
import 'dart:async';

class Eda extends StatefulWidget {
  dynamic screenHandler;
  Eda(dynamic screenHandler){
    this.screenHandler = screenHandler; 
  }
  @override
  _EdaState createState() => _EdaState(screenHandler);
}

class _EdaState extends State<Eda> {
  String fromTime = "TimeOfDay(15:70)";
  String toTime = "TimeOfDay(13:00)";
  
  TimeOfDay _time = new TimeOfDay.now(); 
  DateTime selectedDate;

  dynamic screenHandler;
  _EdaState(dynamic screenHandler){
    this.screenHandler = screenHandler; 
  }

  Future<void> _selectTime(BuildContext context,int who) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (picked != null && picked != _time){
      String x = picked.toString();
      print(x);
      setState((){
        if(who == 1){
          fromTime = x;
          }
        else{
          toTime = x;
        }
      });
    }
  }
  List<Map> days;
  String name;
  @override
  void initState() { 
    super.initState();
    days = [
      {"day":"S","state":false},
      {"day":"M","state":false},
      {"day":"T","state":false},
      {"day":"W","state":false},
      {"day":"T","state":false},
      {"day":"F","state":false},
      {"day":"S","state":false}
      ];
  }
  Expanded circleContainer(Map day,int index){
    Color forground = day["state"] ? frontColor:whiteColor;
    Color background = day["state"] ? whiteColor:frontColor;
    return Expanded(
          child: GestureDetector(
                  onTap: (){
                    var temp = days;
                    temp[index]["state"] = !temp[index]["state"];
                    setState(() {
                      days:temp;
                    }); 
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 0, 3,0),
                    child: CircleAvatar(
                      backgroundColor: forground,
                      radius: 25.0,
                      child: Text(day["day"],
                                  style: TextStyle(
                                      color: background,
                                      fontSize: 32
                                  ),),                  
                  )  
        ),
          ),
    );
  }

  GestureDetector timeContainer(int t){
    String text;
    if(t == 1){
      text = fromTime;

    }
    else{
      text = toTime;
    }
    int startTime =int.parse(text.substring(text.length -6,(text.length-4)));
    String formart = startTime > 12  ? "PM":"AM";
    text = text.substring(text.length -6,text.length-1);
    Container method(String text){
      return Container(
            margin:EdgeInsets.fromLTRB(3, 1.5, 3, 1.5),
            child:Text(text,
            style:TextStyle(
              color: frontColor,
              fontSize:18
            )),
          ); 
    }
    return GestureDetector(
          onTap: (){
              _selectTime(context,t);
              print({fromTime,toTime});
              print("date handler is being called");
          },
          child: Container(
              width:100,
              height:45,
              decoration: BoxDecoration(
              border: Border.all(width:2,color:frontColor),
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child:Flex(
      mainAxisAlignment: MainAxisAlignment.center,
      direction: Axis.horizontal,
      children:<Widget>[
        method("${text}"),
      Container(
          height:20,
          width:2,
          color:frontColor,
          child:Text(" ")
        ),
          method("${formart}")
      ]
          )
        ),
    );
  }
  TextStyle labelStyle(){
    return TextStyle(
      fontSize: 20,
      color:frontColor
          );
  }
  AlertDialog alertDialog(){
    return AlertDialog(
                title: Text("the days you selected is overiding another day do you want to overide ?".toUpperCase()),
                titleTextStyle: TextStyle(
                  color: frontColor
                ),
                actions:[
                  FlatButton(
                    onPressed: (){},
                    child:Text("yes",
                    style: TextStyle(
                      color: Colors.green
                    ),)
                  ),
                  FlatButton(
                    onPressed: (){},
                    child:Text("no",
                    style: TextStyle(
                      color: Colors.red
                    ),)
                  )
                ]
              );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          color: whiteColor,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(top: 20),
          width:Index.width(context, 10) ,
          height:Index.height(context, 4) ,
          child:Stack(
            children:[
              Positioned(
                child: Container(
                child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      for (var i = 0; i < days.length; i++) circleContainer(days[i],i)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Flex(
                      direction: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(top:10),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                child: Text("ACTIVITY NAME: ",
                                      style: labelStyle()),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width:1,
                                    color: frontColor
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                width: 140,
                                height:40,
                                child: TextField(
                                  onChanged: (String value){
                                      print(value);
                                      this.name = value;
                                  },
                                  cursorColor: frontColor,
                                  decoration:InputDecoration(
                                    filled: true,
                                    hintText: "....",
                                    hintStyle: TextStyle(
                                      color: frontColor
                                    ),
                                    focusColor: Colors.blue,
                                    contentPadding: EdgeInsets.all(10),
                                    border:OutlineInputBorder(
                                      borderSide:  BorderSide.none
                                    )
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height:60,
                          child:Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Text("TIME: ",
                              style: labelStyle()
                              ),
                              Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  timeContainer(1),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  timeContainer(2),
                                ],
                              )
                            ],
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width:Index.width(context,9.6),
                          child: Flex(
                            direction:Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget>[
                              Container(
                                child:Text(
                                        "Total Pomodoro Session 3",
                                        style:TextStyle(
                                          color:frontColor
                                        ))
                              ),
                              Container(
                                child:FlatButton(
                                splashColor: frontColor,
                                disabledColor: Colors.lightGreenAccent,
                                color: frontColor,
                                child: Text("SAVE",
                                              style: TextStyle(
                                                    color:whiteColor,
                                                    ),
                                                  ),
                                onPressed:(){
                                  screenHandler();
                                  List<String> selectedDay = [];
                                  for(Map i in days){
                                    if(i["state"]){
                                      selectedDay.add(i["day"]);
                                    };
                                  }
                                  Map values = {
                                    "name": name,
                                    "days": selectedDay,
                                    "time":{
                                      "from":this.fromTime,
                                      "to":this.toTime
                                      }
                                    };
                                  print(values);
                                },
                              ),
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
            ),
          ),
              ),
              Positioned(
                child:alertDialog()
              ), 
            ]
          )
    );
  }
}
