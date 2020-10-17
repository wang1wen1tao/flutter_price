import 'package:flutter/material.dart';

class HoriVertAlignPage extends StatelessWidget {
  const HoriVertAlignPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal and Vertical Align'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 100,
            height: 70,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 70,
            color: Colors.blueAccent,
          ),
          Container(
            width: 100,
            height: 70,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
