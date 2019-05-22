import 'package:flutter/material.dart';

import 'package:project_one/page/computer.dart' as computer;
import 'package:project_one/page/headset.dart' as headset;
import 'package:project_one/page/radio.dart' as radio;
import 'package:project_one/page/smartphone.dart' as hp;

void main() {
  runApp( new MaterialApp(
    title: "Tab Bar",
    home: PageTab(),
  ));
}

class PageTab extends StatefulWidget {
  @override
  _PageTabState createState() => _PageTabState();
}

class _PageTabState extends State<PageTab> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Electronic Lists"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Computer",),
            new Tab(icon: new Icon(Icons.headset), text: "Headset",),
            new Tab(icon: new Icon(Icons.radio), text: "Radio",),
            new Tab(icon: new Icon(Icons.smartphone), text: "Smartphone",),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new computer.Computer(),
          new radio.Radio(),
          new headset.Headset(),
          new hp.Smartphone()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.radio),),
            new Tab(icon: new Icon(Icons.smartphone),),
          ],
        ),
      ),
    );
  }
}