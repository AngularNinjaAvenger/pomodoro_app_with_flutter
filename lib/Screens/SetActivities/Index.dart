import 'package:app/Screens/SetActivities/Script.dart';
import 'package:flutter/material.dart';
import "../../Navigation/Navigation.dart";
import "../../Reusable/UiColor.dart";
import "./LoadDayActivities.dart";
import "./Days.dart";
import "EditDayActivitiy.dart";

class SetActivities extends StatefulWidget {
  @override
  _SetActivitiesState createState() => _SetActivitiesState();
}
class _SetActivitiesState extends State<SetActivities> {
  @override
  Widget build(BuildContext context) {
      return Days();
}
}

