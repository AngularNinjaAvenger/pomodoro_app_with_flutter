
import 'package:app/Reusable/ActionDialogue.dart';
import 'package:app/Screens/CountDown/CountDownTimer.dart';
import 'package:flutter/material.dart';
import "../../Reusable/UiColor.dart";


void main() => runApp(CountDown());
 
class CountDown extends StatefulWidget {
  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  bool showAlert = false;
  Color mainColor = frontColor;
  Color lightColor = whiteColor;
  Color buttonColor = whiteColor;
  MinuteAndSeconds timer;
  Map time = {
    "minutes":1,
    "seconds":5,
  };
  String buttonText = "Pause";

  bool startTime = true;

  var stopwatch = Stopwatch();
  yesHandler(){
    // GO BACK TO HOME SCREEN
  }
  noHandler(){
    timer.start();
    setState(() {
      showAlert = false;
    });
  }
  start(){
    setState(() {
      timer = MinuteAndSeconds(
        minutes:time["minutes"],
        seconds:time["seconds"],
        getTimeHandler:this.setTime
      );
    });
    timer.start();
  }
  
  setTime(Map t){
    setState(() {
      time = t;
    });
  }
  @override
  void initState() {
    super.initState();
    start();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,          
            children: <Widget>[
              Text(
                "COUNTDOWN TIMER",
                style: TextStyle(
                          color:frontColor,
                          fontSize:30
                                  ),
                ),
              Text("${time["minutes"].toString().length == 1 ? "0":""}${time["minutes"]}:${time["seconds"].toString().length == 1 ? "0":""}${time["seconds"]}",
                style: TextStyle(
                  color: (time["minutes"]  == 0) && (time["seconds"] < 10) ? Colors.red:frontColor,
                  fontSize:90
                          )
              ),
              Container(
                child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceAround,          
                direction: Axis.horizontal,
                  children: <Widget>[
                    FlatButton(
                      child: Text(buttonText,
                                style:TextStyle(
                                  color:whiteColor
                                )),
                      color:frontColor,
                      onPressed:(){
                       setState((){
                         buttonText = buttonText == "Pause" ? "Continue":"Pause"; 
                       });
                       if(buttonText == "Pause")timer.start();
                       else timer.stop();
                      }
                      ),
                      FlatButton(
                        child: Text("Stop",
                                  style:TextStyle(
                                    color:whiteColor
                                  )),
                        color:Colors.red,

                        onPressed:(){
                          timer.stop();
                          setState((){
                            showAlert = true;
                          });
                        }
                      ,),
                  ],
                ),
              )
            ],
            ),
          showAlert ? AlertDialogue(
            message:"Are you sure you want to stop the timer",
            yes:yesHandler,
            no:noHandler
            ):SizedBox(height: 2),
        ],
    );
  }
}