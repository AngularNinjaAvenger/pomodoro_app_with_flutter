import 'package:flutter/material.dart';
import './Index.dart';
import './UiColor.dart';

TextStyle textStyle(){
    return TextStyle(
      color: frontColor,
    );
  }

Flex infomation (String text1,String text2){
        return  Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Text(text1),
                        Text(text2,
                          style: textStyle()
                        ),
                      ],
                    );
  } 
SizedBox divide(){
  return SizedBox(
    height: 7,    
  );
}


Container list(context,Map item,String buttonText,dynamic buttonHandler,bool centerButton,bool moreInfo,bool completed){
    return Container(
      margin:EdgeInsets.all(8),
      padding:EdgeInsets.all(2),
      width:Index.width(context, 10),
      height:Index.height(context, 1.3),
      color:lightColor,
      child:Row(
        children:<Widget>[
          Expanded(
            child:Container(
              child:Flex(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.start,
                direction:Axis.vertical,
                children:<Widget>[
                    infomation("Activities",item["Activitiy Name"]),
                   divide(),
                   infomation("TIME: ",item["Time"]),
                   divide(),
                   infomation("TOTAL POMODORO SESSION: ",item["TOTAL POMODORO SESSION"]),
                   divide(),
                   moreInfo ? infomation("POMODORO SESSION HELD: ",item["POMODORO SESSION HELD"]): SizedBox(width:0.1),
                ],

              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            alignment:centerButton ? Alignment.center:Alignment.bottomCenter,
            child:FlatButton(
                 child:Text(
                    buttonText,
                    style: TextStyle(
                      color: whiteColor
                    )),
                 onPressed:buttonHandler,
                 color: completed  ? frontColor:Colors.red,
              )
          )
          
        ]
      )
    );
  }

