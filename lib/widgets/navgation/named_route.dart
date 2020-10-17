import 'package:flutter/material.dart';

class NamedRoutePage extends StatelessWidget {
  const NamedRoutePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Basic'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).pushNamed('back'),
          child: Text('go'),
        ),
      ),
    );
  }
}

class BacksPage extends StatelessWidget {
  const BacksPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('back'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('back'),
        ),
      ),
    );
  }
}
