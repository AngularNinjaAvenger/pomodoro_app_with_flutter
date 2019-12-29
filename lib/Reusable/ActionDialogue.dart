import 'package:app/Reusable/UiColor.dart';
import 'package:flutter/material.dart';
 
 
class AlertDialogue extends StatefulWidget {
  String message;
  dynamic yes;
  dynamic no;
  AlertDialogue({this.message,this.yes,this.no});
  @override
  _AlertDialogueState createState() => _AlertDialogueState(yes:yes,no:no,message:message);
}

class _AlertDialogueState extends State<AlertDialogue> {
  String message;
  dynamic yes;
  dynamic no;
  _AlertDialogueState({this.message,this.yes,this.no});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                title: Text(message),
                titleTextStyle: TextStyle(
                  color: frontColor
                ),
                actions:[
                  FlatButton(
                    onPressed: (){
                      yes(); 
                    },
                    child:Text("yes",
                    style: TextStyle(
                      color: Colors.green
                    ),)
                  ),
                  FlatButton(
                    onPressed: (){
                      no();
                    },
                    child:Text("no",
                    style: TextStyle(
                      color: Colors.red
                    ),)
                  )
                ]
              );
  }
}