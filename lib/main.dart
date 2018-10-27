import 'package:flutter/material.dart';
import './views/page_first.dart';
import './views/page_second.dart';
import './views/page_third.dart';
import './views/page_fourth.dart';

void main() {
  runApp(MaterialApp(
    home: FlutterView(),
  ));
}

class FlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter View',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("Welcome to Flutter！！！"),
//      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          RanDomWords(),
          SecondPage(),
          ThirdPage(),
//          FourthPage(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.orangeAccent,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: "列表", icon: Icon(Icons.home)),
            Tab(text: "通知", icon: Icon(Icons.message)),
            Tab(text: "我的", icon: Icon(Icons.cloud)),
//            Tab(text: "列表", icon: Icon(Icons.list)),
          ], //tab
        ), //tabbar
      ), //meterial
    ); //Scaffold
  }
}
