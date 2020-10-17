import 'package:flutter/material.dart';

class GridViewExtentPage extends StatelessWidget {
  const GridViewExtentPage({Key key}) : super(key: key);
  Widget buildGrid() {
    return GridView.extent(
        maxCrossAxisExtent: 150,
        padding: EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
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
        title: Text('Grid View Extent'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}
