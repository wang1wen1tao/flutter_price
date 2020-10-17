import 'package:flutter/material.dart';

class Schoolpage extends StatelessWidget {
  const Schoolpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        '其他',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
