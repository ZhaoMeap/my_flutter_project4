import 'package:flutter/material.dart';
import 'app_body.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //建立appTitle物件
    var appTitle = Text('Flutter Button');

    //建立appBody物件
    var appBody = AppBody();

    //建立appBar物件
    var appBar = AppBar(
      title: appTitle,
    );

    //建立app物件
    var app = MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: appBody,
      )
    );

    return app;
  }

}
