import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Smartphone", style: new TextStyle(fontSize: 30.0),),
            // new Icon(Icons.smartphone, size: 90.0,),
            new Padding(padding: new EdgeInsets.all(20.0),),
            // new Image.asset("images/hp.jpg")  
            new Image(image: new NetworkImage("https://banner2.kisspng.com/20180420/sqw/kisspng-iphone-x-iphone-8-iphone-se-face-id-2019-5adaabc4998e53.025083501524280260629.jpg"), width: 600.0,)        
          ],
        ),
      ),
    );
  }
}