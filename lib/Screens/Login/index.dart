import 'package:app/Reusable/UiColor.dart';
import 'package:flutter/material.dart';
 
 
class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:FlatButton(
          onPressed: (){},
          child: Text(
              "Logout",
              style: TextStyle(
                color: whiteColor
              ),),
          color: Colors.red,
        )
      ),
    );
  }
}