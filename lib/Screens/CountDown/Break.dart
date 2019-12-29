import 'package:app/Reusable/Index.dart';
import 'package:app/Reusable/UiColor.dart';
import 'package:app/Screens/CountDown/CountDownTimer.dart';
import 'package:flutter/material.dart';
 
 
class Break extends StatefulWidget {
  @override
  _BreakState createState() => _BreakState();
}

class _BreakState extends State<Break> {
  bool started = false;
  MinuteAndSeconds timer;
  Map time = {
    "minutes":1,
    "seconds":5,
  };
  @override
  void initState() { 
    super.initState();
    timer = MinuteAndSeconds(
        minutes:time["minutes"],
        seconds:time["seconds"],
        getTimeHandler:this.setTime
      );
  }
  start(){
    timer.start();
    setState(() {
      started = true;
    });
  }
  setTime(Map times){
    setState(() {
      time = times;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
              height: Index.height(context, 9),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("BREAK TIME",
                      style:TextStyle(
                        fontSize: 40,
                        color: frontColor
                      )),
                !started ? 
                Icon(
                  Icons.access_alarm,
                  color: frontColor,
                  size: 200,
                ):Text("${time["minutes"].toString().length == 1 ? "0":""}${time["minutes"]}:${time["seconds"].toString().length == 1 ? "0":""}${time["seconds"]}",
                      style:TextStyle(
                        fontSize: 100,
                        color: (time["minutes"]  == 0) && (time["seconds"] < 10) ? Colors.red:frontColor
                      )),
                !started ? Text("you have completed 5 sessions remaining 2",
                    style:TextStyle(
                        color: frontColor
                      )
                  ):SizedBox(
                    width: 0,
                  ),
                !started ?
                FlatButton(
                  onPressed: start,
                  color: frontColor,
                  child: Text("start break",
                      style:TextStyle(
                        color: whiteColor
                      )),
                ): SizedBox(
                  width: 0,
                )
              ],
            ),
    );
  }
}