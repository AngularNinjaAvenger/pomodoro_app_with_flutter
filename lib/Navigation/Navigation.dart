import 'package:flutter/material.dart';
 
 


class Navigation extends StatelessWidget {
  const Navigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget>[
           Expanded(
             child: Container(
                child: Text(
                  "HOME",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
           ),
           ),
           Expanded(
             child: Container(
                child: Text(
                  "SET ACTIVITIES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
           ),
           ),
           Expanded(
             child: Container(
                child: Text(
                  "RECORDS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
           ),
           )
    ],
    );
  }
}








// class NavigationBar extends StatefulWidget {
//   NavigationBar({Key key}) : super(key: key);

//   @override
//   _NavigationBarState createState() => _NavigationBarState();
// }

// class _NavigationBarState extends State<NavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//       return Container(child: Text("what popaing"),);
//   }
// }



