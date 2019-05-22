import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "card & parsing",
    home: OnePage(),
  ));
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(ikon: Icons.brightness_2, teks: "Home", warnaIkon: Colors.red,),
            new MyCard(ikon: Icons.brightness_2, teks: "Home", warnaIkon: Colors.yellow,),
            new MyCard(ikon: Icons.brightness_2, teks: "Home", warnaIkon: Colors.green,),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

  MyCard({this.ikon, this.teks, this.warnaIkon});

  final IconData ikon;
  final String teks;
  final Color warnaIkon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              ikon, 
              size: 50.0, 
              color: warnaIkon
              ),
            new Text(
              teks, 
              style: new TextStyle(fontSize: 20.0)
              )
          ],
        ),
      ),
    );
  }
}
