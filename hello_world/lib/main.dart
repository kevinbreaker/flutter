import 'package:flutter/material.dart';

// ** Classe da aplicação
class CalcHelloWordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator Hello Wolrd',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[200]
      ),
      home: new MainPage(),
    );   
  }
}
// ** Classe da página principal
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MainPageState();

}

// ** Estado da página principal
class _MainPageState extends State<MainPage> {
 
  double _num1 = 0.0;
  double _num2 = 0.0;
  double _resultAdd = 0.0;
  double _resultSub = 0.0;

  void _setNumber1(String valor) {
    setState(() {
      try {
        _num1 = double.parse(valor);
        _resultAdd = _num1 + _num2;
        _resultSub = _num1 - _num2;
      } catch (err) {
        // TODO: Notificar 
      }
    });
  }

  void _setNumber2(String valor) {
    setState(() {
      try {
        _num2 = double.parse(valor);
        _resultAdd = _num1 + _num2;
        _resultSub = _num1 - _num2;
      } catch (err) {
        // TODO: Notificar 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator Hello world."),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.00),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                labelText: "Primeiro número:"
              ),
              keyboardType: TextInputType.numberWithOptions(),
              onChanged: (value) {
                  _setNumber1(value);
              }
            ),
            new TextField(
              decoration: new InputDecoration(
                labelText: "Primeiro número:"
              ),
              keyboardType: TextInputType.numberWithOptions(),
              onChanged: (value) {
                  _setNumber2(value);
              }
            ),
           new Text(
             " - Adição: $_resultAdd \n - Subtração: $_resultSub",
             style: new TextStyle(
               fontWeight: FontWeight.bold
             ),
             textAlign: TextAlign.center
           )
          ],
        ),
      ),
    );
  }
}

void main () => runApp(new CalcHelloWordApp());