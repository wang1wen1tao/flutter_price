import 'dart:async';

import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  RefreshIndicatorPage({Key key}) : super(key: key);

  @override
  _RefreshIndicatorPageState createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  final _controller = ScrollController();

  Future _refresh() {
    final computer = Completer();
    Future.delayed(Duration(seconds: 2), () {
      computer.complete();
    });
    return computer.future;
  }

  @override
  Widget build(BuildContext context) {
    final items = List.generate(100, (index) => index + 1).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator'),
      ),
      body: RefreshIndicator(
          child: ListView.builder(
              controller: _controller,
              itemCount: items.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text('Items ${index + 1}'),
                  )),
          onRefresh: _refresh),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.animateTo(0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut),
        child: Icon(Icons.arrow_upward, color: Colors.white),
      ),
    );
  }
}
