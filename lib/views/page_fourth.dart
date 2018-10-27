import 'package:flutter/material.dart';


class FourthPage extends StatefulWidget{
  @override
  State createState()=> new FourthPageState();
}

class FourthPageState  extends State<FourthPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("我是界面4"),
      ),//Appbar
      body: new Center(
        child: new Text("这是第四个界面"),
      ),//center
    );//Scaffold
  }
}