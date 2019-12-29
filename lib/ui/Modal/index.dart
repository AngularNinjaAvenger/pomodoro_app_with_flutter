import 'package:flutter/material.dart';
import '../../Reusable/UiColor.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Modal()
      ),
    );
  }
}




class Modal extends StatefulWidget {
  Modal({Key key}) : super(key: key);

  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  Widget build(BuildContext context) {
    return Container(
            color:Colors.green,
            width: 250,
            height:100,
            child:Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Are you sure you want to stop",style:TextStyle( color:whiteColor),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                      FlatButton(
                        child:Text("yes",style: TextStyle(color: frontColor),),
                        onPressed: (){ print("true");},
                      ),
                      FlatButton(
                        child:Text("no",style: TextStyle(color: frontColor),),
                        onPressed: (){ print("true");},
                      ),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
              );
  }
}