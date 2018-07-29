import 'package:flutter/material.dart';
import '../models/status_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, idx) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              idx == 1
                  ? new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new Text(
                          "Viewed updates",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.right,
                        )
                      ],
                    )
                  : new ListTile(
                      leading: new CircleAvatar(
                          foregroundColor: Theme.of(context).primaryColor,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              new NetworkImage(dummyData[idx].statusUrl)),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            dummyData[idx].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      subtitle: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            dummyData[idx].time,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
            ],
          ),
    );
  }
}
