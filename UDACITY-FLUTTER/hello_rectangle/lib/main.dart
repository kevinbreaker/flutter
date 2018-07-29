import 'package:flutter/material.dart';

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
        child: Center(
            child: Text(
          "Hello Devs",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40.0),
        )),
      ),
    );
  }
}
