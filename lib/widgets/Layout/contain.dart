import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 70,
                color: Colors.red,
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
          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 70,
                color: Colors.red,
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
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: container,
      ),
    );
  }
}
