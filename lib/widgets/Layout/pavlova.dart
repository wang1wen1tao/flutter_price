import 'package:flutter/material.dart';

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTitle = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 18,
        ),
      ),
    );

    final subTitle = Text(
      '''
Pavlova is a  .
''',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 8,
      ),
    );

    final leftColumn = Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
      child: Column(
        children: <Widget>[
          textTitle,
          subTitle,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Pavlova'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(0.5),
          height: 900,
          child: Card(
            child: Row(
              children: <Widget>[
                Container(
                  width: 200,
                  child: leftColumn,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
