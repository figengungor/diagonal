import 'package:flutter/material.dart';
import 'package:diagonal/diagonal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diagonal Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(),
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

  _getBody() => ListView(
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
