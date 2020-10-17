import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final data = [
    {'title': '1625 Main Street', 'subtitle': 'My City, CA 99984'},
    {'title': '(408) 555-1212', 'subtitle': 'My City, CA 99984'},
    {'title': '(408) 555-1212', 'subtitle': 'My City, CA 99984'},
    {'title': '(408) 555-1212', 'subtitle': 'My City, CA 99984'}
  ];
  @override
  Widget build(BuildContext context) {
    final items = data
        .map<Widget>((e) => ListTile(
              title: Text(e['title']),
              subtitle: Text(e['subtitle']),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          child: Card(
            child: Column(
              children: items,
            ),
          ),
        ),
      ),
    );
  }
}
