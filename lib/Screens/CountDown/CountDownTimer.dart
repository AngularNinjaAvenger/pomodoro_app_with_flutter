import 'dart:async' as prefix0;
import 'dart:collection';
import 'package:flutter/material.dart';


class MinuteAndSeconds {
  int minutes = 0;
  int seconds = 0;
  bool startTime = true;
  dynamic getTimeHandler;
  MinuteAndSeconds({this.getTimeHandler,this.minutes,this.seconds});
  
  startTimer(){
    setTime();    
      if(startTime){
        prefix0.Timer(Duration(seconds: 1),countDown);
    };
  }
  setTime(){
    seconds = seconds < 1 ? 0:seconds - 1;
    if(seconds == 0 && minutes > 0){
      seconds = 59;
      minutes = minutes - 1;
      }
    if(seconds == 0 && minutes == 0){
      startTime = false;
    }
    getTimeHandler({
      "minutes":minutes,
      "seconds":seconds,
    });
  }
  countDown(){
    if(startTime){
      startTimer();
    }

  }
  start(){
    startTime = true;
    startTimer();
  }
  stop(){
    startTime = false;
  }
}


  
  