import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, idx) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[idx].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummyData[idx].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  dummyData[idx].time,
                  style: new TextStyle(fontStyle: FontStyle.italic, color: Colors.grey, fontSize: 14.0),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                  dummyData[idx].message,
                  style: new TextStyle(fontStyle: FontStyle.italic, color: Colors.grey, fontSize: 14.0),
                ),
            ),
          )
        ],
      ),
    );
  }
}