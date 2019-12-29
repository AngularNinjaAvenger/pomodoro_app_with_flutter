import 'package:app/Screens/CountDown/CountDown.dart';
import 'package:flutter/material.dart';
import 'Break.dart';
 
class Ct extends StatefulWidget {
  @override
  _CtState createState() => _CtState();
}

class _CtState extends State<Ct> {
  @override
  Widget build(BuildContext context) {
    return CountDown();
  }
}