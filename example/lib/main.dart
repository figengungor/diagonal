import 'package:flutter/material.dart';
import 'package:diagonal/diagonal.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Diagonal Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagonal Examples'),
      ),
      body: _getBody(),
    );
  }

  _getBody() {
    return ListView(
      children: <Widget>[
        Diagonal(
          child: Image.asset('assets/images/backdrop.jpg'),
          clipHeight: 90.0,
        ),
        Diagonal(
          child: Image.asset('assets/images/backdrop.jpg'),
          position: Position.BOTTOM_RIGHT,
          clipHeight: 90.0,
        ),
        Diagonal(
          child: Image.asset('assets/images/backdrop.jpg'),
          position: Position.TOP_LEFT,
          clipHeight: 90.0,
        ),
        Diagonal(
          child: Image.asset('assets/images/backdrop.jpg'),
          position: Position.TOP_RIGHT,
          clipHeight: 90.0,
        ),
      ]
          .map((item) => Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: item,
              ))
          .toList(),
    );
  }
}
