import 'package:flutter/material.dart';

void main() {
  runApp( new MaterialApp(
    home: new PageOne(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/PageOne': (BuildContext context) => new PageOne(),
      '/PageTwo': (BuildContext context) => new PageTwo(),
    }
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Month"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.brightness_1, size:40.0, color: Colors.blue,),
          onPressed: (){
             Navigator.pushNamed(context, '/PageTwo');
          },
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("sun"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.brightness_5, size:40.0, color: Colors.blue,),
          onPressed: (){
            Navigator.pushNamed(context, '/PageOne');
          },
        ),
      ),
    );
  }
}

