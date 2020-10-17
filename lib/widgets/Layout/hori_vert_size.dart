import 'package:flutter/material.dart';

class HoriVertSizingPage extends StatelessWidget {
  const HoriVertSizingPage({Key key}) : super(key: key);
  // Expanded 天cun
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal and Vertical Sizing'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 100,
              height: 70,
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 70,
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 70,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
