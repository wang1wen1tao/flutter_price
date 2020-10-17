import 'package:flutter/material.dart';

class BasicNavigationPage extends StatelessWidget {
  const BasicNavigationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Basic'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BackPage())),
          child: Text('go'),
        ),
      ),
    );
  }
}

class BackPage extends StatelessWidget {
  const BackPage({Key key}) : super(key: key);

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
