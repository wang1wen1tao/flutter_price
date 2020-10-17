import 'package:flutter/material.dart';
import 'components/card.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '组件',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: JwTDraw(),
      body: Column(),
    );
  }
}
