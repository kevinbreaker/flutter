import 'package:flutter/material.dart';
import 'package:whatapp_ui_clone/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff00695c),
        accentColor: new Color(0xff25De66),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}