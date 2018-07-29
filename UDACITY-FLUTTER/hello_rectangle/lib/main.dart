import 'package:flutter/material.dart';

const _padding = EdgeInsets.all(16.0);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: new Text('Hello Rectangle'),
      ),
      body: HelloRectangle(),
    ),
  ));
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        width: 300.0,
        height: 400.0,
        child: Padding(
          padding: _padding,
          child: Text(
          "Hello Devs",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40.0),
        )),
      ),
    );
  }
}
