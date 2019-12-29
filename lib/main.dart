import 'package:app/Screens/Login/index.dart';
import 'package:flutter/material.dart';
import "Screens/Home/Index.dart";
import "Screens/Records/Index.dart";
import "Screens/SetActivities/Index.dart";
import "package:app/ui/Modal/index.dart";
import "./Screens/CountDown/Index.dart";
import 'Reusable/UiColor.dart';

void main() => runApp(MyApp());





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TabsExample(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),

      ),
    );
  }
}
class TabsExample extends StatelessWidget {
  const TabsExample({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Home(),
      SetActivities(),
      RecordScreen(),
      Logout()
    ];
    final _kTabs = <Tab>[
      Tab(text: 'HOME'),
      Tab(text: 'ACTIVITY'),
      Tab(text: 'RECORD'),
      Tab(text: 'LOG OUT'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: frontColor,
          title: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
