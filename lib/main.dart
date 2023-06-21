import 'package:ex_f/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  _MyAppState createState()=> _MyAppState();

}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BbongFlix',
    theme: ThemeData(
      brightness: Brightness.dark,
    primaryColor: Colors.black,
    hintColor: Colors.white,
    ),
      home: DefaultTabController(length: 4, child: Scaffold(body: TabBarView(physics: NeverScrollableScrollPhysics(), children: <Widget>[
      Container(child: Center(child: Text('home'),),),
      Container(child: Center(child: Text('search'),),),
      Container(child: Center(child: Text('saved'),),),
      Container(child: Center(child: Text('more'),),),
      ] ,
      ),
        bottomNavigationBar: Bottom( ),
      ),
      ),
    );

  }
}