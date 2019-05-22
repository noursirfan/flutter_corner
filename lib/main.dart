import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Lists View",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[900],
        title: new Text("JavaScript Lists"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTutorial(gambar: "https://ih0.redbubble.net/image.585533911.4346/hj,x1000-bg,f8f8f8.u5.jpg", judul: "JavaScript"),
          new ListTutorial(gambar: "https://ih1.redbubble.net/image.382862588.8406/hj,x1000-bg,f8f8f8.jpg", judul: "Node JS"),
          new ListTutorial(gambar: "https://ih0.redbubble.net/image.382777508.2686/hj,x1000-bg,f8f8f8.jpg", judul: "Angular JS"),
          new ListTutorial(gambar: "https://ih1.redbubble.net/image.218906102.3214/hj,x1000-bg,f8f8f8.u1.jpg", judul: "React JS"),
          new ListTutorial(gambar: "https://ih1.redbubble.net/image.380881111.2066/hj,x1000-bg,f8f8f8.jpg", judul: "Vue JS"),
          new ListTutorial(gambar: "https://ih1.redbubble.net/image.411012419.9872/hj,x1000-bg,f8f8f8.u1.jpg", judul: "Ember JS"),
          new ListTutorial(gambar: "https://ih0.redbubble.net/image.512178803.7121/hj,x1000-bg,f8f8f8.u1.jpg", judul: "Jquery"),
          new ListTutorial(gambar: "https://ih0.redbubble.net/image.703201934.4006/hj,x1000-bg,f8f8f8.u4.jpg", judul: "Webpack JS"),
          new ListTutorial(gambar: "https://ih0.redbubble.net/image.392874884.7635/hj,x1000-bg,f8f8f8.jpg", judul: "Rx JS"),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {

  ListTutorial ({this.gambar, this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      // child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(gambar), 
              width: 80.0,
            ),
           new Container(
             padding: new EdgeInsets.all(5.0),
            //  child: new Center(
               child: new Column(
                 children: <Widget>[
                    new Text(
                      judul,
                      textAlign: TextAlign.left,
                      style: new TextStyle(fontSize: 15.0),
                    ),
                    new Text(
                      "ini adalah diskripsi tutorial...", 
                      style: new TextStyle(fontSize: 13.0, color: Colors.grey),
                      textAlign: TextAlign.left,
                    )
                 ],
               ),
            //  ),
           )
          ],
        ),
      // ),
    );
  }
}