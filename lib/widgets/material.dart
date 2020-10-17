import 'package:flutter/material.dart';

class WidgetMaterialPage extends StatelessWidget {
  const WidgetMaterialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exapple.title')),
      body: Center(
        child: Text('hello world'),
      ),
    );
  }
}
