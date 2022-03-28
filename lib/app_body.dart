import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppBody extends StatelessWidget {
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;

    final btn1 = RaisedButton(
      child: Text(
        'RaisedButton',
        style: TextStyle(fontSize: 20),
      ),
      color: Colors.yellow,
      textColor: Colors.red,
      elevation: 8,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: () => Fluttertoast.showToast(
        msg: '直接改成Toast訊息（測試一）',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 20.0),
    );


    final btn2 = FlatButton(
      child: Text(
        'FlatButton',
        style: TextStyle(fontSize: 20),
      ),
      color: Colors.blue,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: () => Fluttertoast.showToast(
          msg: '直接改成Toast訊息（測試二）',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 20.0),
    );

    final btn3 = OutlineButton(
      child: Text(
        'OutlineButton',
        style: TextStyle(fontSize: 20),
      ),
      textColor: Colors.black,
      borderSide: BorderSide(
        color: Colors.red, //Color of the border
        style: BorderStyle.solid, //Style of the border
        width: 0.8, //width of the border
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: () => Fluttertoast.showToast(
          msg: '直接改成Toast訊息（測試三）',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 20.0),
    );

    final btn4 = IconButton(
      icon: Icon(Icons.phone_android),
      iconSize: 40,
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      onPressed: () => _showSnackBar('這是IconButton'),
    );

    final btn5 = FloatingActionButton(
//      child: Text(
//        'F',
//        style: TextStyle(fontSize: 20),
//      ),
      child: Icon(Icons.phone_android),
      elevation: 8,
      shape: CircleBorder(),
      onPressed: () => _showSnackBar('這是FloatingActionButton'),
    );

    // RaisedButton、FlatButton和OutlineButton都有類似的用法
    final btn6 = RaisedButton.icon(
      label: Text(
        'RaisedButton.icon',
        style: TextStyle(fontSize: 20),
      ),
      icon: Icon(Icons.phone_android),
      textColor: Colors.red,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: () => _showSnackBar('這是RaisedButton.icon'),
    );

    final widget = Center(
      child: Column(
        children: <Widget>[
          Container(child: btn1, margin: EdgeInsets.symmetric(vertical: 10),),
          Container(child: btn2, margin: EdgeInsets.symmetric(vertical: 10),),
          Container(child: btn3, margin: EdgeInsets.symmetric(vertical: 10),),
          Container(child: btn4, margin: EdgeInsets.symmetric(vertical: 10),),
          Container(child: btn5, margin: EdgeInsets.symmetric(vertical: 10),),
          Container(child: btn6, margin: EdgeInsets.symmetric(vertical: 10),),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );

    return widget;
  }

  void _showSnackBar(String msg) {
    // 建立SnackBar物件
    final snackBar = SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      action: SnackBarAction(
        label: 'Toast訊息',
        textColor: Colors.white,
        onPressed: () => Fluttertoast.showToast(
            msg: '你按下SnackBar',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.tealAccent,
            fontSize: 20.0),
      ),
    );

    // 顯示SnackBar
    Scaffold.of(context).showSnackBar(snackBar);
  }
}