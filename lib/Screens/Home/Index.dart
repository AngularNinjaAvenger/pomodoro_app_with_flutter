import 'package:app/Screens/CountDown/Break.dart';
import 'package:flutter/material.dart';
import "../../Navigation/Navigation.dart";
import "../../Actions/Greet.dart";
import "../../Reusable/UiColor.dart";

void main() => runApp(Home());
 
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Break();
    return Container(
        padding:EdgeInsets.all(8),
        color:Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 1,
              right:5,
              child:Greet(),
            ),
              Flex(
            direction: Axis.vertical,
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("ACTIVITY:",
                style: TextStyle(
                  fontSize: 24,
                ),
                ),
            Text("PROGRAMMING CLASS",
                style: TextStyle(
                  fontSize: 30,
                  color: frontColor,
                ),
                ),
            Container(
              width: 600,
              height:100,
              // width: context.size.height,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Sessions Completed: 5",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text("Remaining: 10 ",
                  style: TextStyle(
                      fontSize: 20,
                    ),
                )
              ],
              ),
            ),
            
            FlatButton(
              color: frontColor,
              child: Text("CONTINUE",
                            style: TextStyle(
                                  color:whiteColor,
                                   ),
                                ),
              onPressed:(){
                print("press handler started");
              },
            ),
            ]
          ),
          ],
        ),
        );
  }
}

