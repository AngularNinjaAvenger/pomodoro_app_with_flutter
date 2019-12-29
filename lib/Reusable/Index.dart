import 'package:flutter/material.dart';
import './UiColor.dart';

class Index{
  void nothing;
  Index(void nothing){
    this.nothing = nothing;
  }
  static double width(context,percent){
    return MediaQuery.of(context).size.width/10 * percent  + 0.1;
  }
  static double height(context,percent){
    return MediaQuery.of(context).size.height/10 * percent  + 0.1;
  }
  static Container container(String day,dynamic handler){
      return Container(
        padding: EdgeInsets.fromLTRB(5,0, 5, 0),
        child:Column(
          children: <Widget>[
          Divider(
              height: 10,
            ),
          GestureDetector(
          onTap: (){handler(day);},
          child:Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            decoration: BoxDecoration(
                          border: Border.all(
                            width:1,
                            color: frontColor
                          ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(day,
                style: TextStyle(
                  fontSize: 20,
                  color: frontColor
                ),),
                Icon(
                    Icons.arrow_drop_up,
                    size:40,
                    color:frontColor
                )
              ],
            ),
          ),
            ),
            Divider(
              height: 10,
            ),
          ],        
        )
      );
  }
}