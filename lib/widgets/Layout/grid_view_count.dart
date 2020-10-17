import 'package:flutter/material.dart';

class GridViewCountPage extends StatelessWidget {
  const GridViewCountPage({Key key}) : super(key: key);
  Widget buildGrid(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.count(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        padding: const EdgeInsets.all(4),
        children: List.generate(
            30,
            (index) => Container(
                  child: Container(
                    child: Container(
                      width: 100,
                      height: 70,
                      color: Colors.amber,
                      child: Text(
                        '${index + 1}',
                      ),
                    ),
                  ),
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Count'),
      ),
      body: Center(
        child: buildGrid(context),
      ),
    );
  }
}
