import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: OnePage(),
  ));
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        leading: new Icon(Icons.home),
        title: new Center(child: new Text('Irfan Kurniawan BC')),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      body: 
      new Container(
        child:
        new Column(
          children: <Widget>[
            new Icon(Icons.brightness_1, size: 30.0, color: Colors.blue,),
            new Row(children: <Widget>[
              new Icon(Icons.brightness_1, size: 30.0, color: Colors.pink,),
              new Icon(Icons.brightness_1, size: 30.0, color: Colors.grey,),
              new Icon(Icons.brightness_1, size: 30.0, color: Colors.black,),
            ],),
            new Icon(Icons.brightness_1, size: 30.0, color: Colors.green,)
          ],
        ),
      )
    );
  }
}