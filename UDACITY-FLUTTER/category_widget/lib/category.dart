import 'package:flutter/material.dart';

const _rowHeight = 100.0;
const _borderIcon = _rowHeight / 2;
const _sizeIcon = 60.0;
const _textSize = 24.0;
const _padding = 8.0;

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData icon;

  const Category({
    this.name,
    this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          height: _rowHeight,
          child: InkWell(
            borderRadius: BorderRadius.circular(_borderIcon),
            highlightColor: color,
            splashColor: color,
            onTap: () => print("Tapped!!!"),
            child: Padding(
                padding: EdgeInsets.all(_padding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(_padding),
                      child: Icon(
                        icon,
                        size: _sizeIcon,
                      ),
                    ),
                    Center(
                      child: Text(
                        name,
                        style: TextStyle(fontSize: _textSize),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
