import 'package:flutter/material.dart';
import 'package:app/widgets/home.dart';
import 'package:app/widgets/layers.dart';
import 'package:app/widgets/school.dart';

class InitPage extends StatefulWidget {
  InitPage({Key key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _current = 0;
  List<Widget> list = List();
  @override
  void initState() {
    list..add(Homepage())..add(Layerpage())..add(Schoolpage());
    print(list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_current],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.computer), title: Text('组件')),
            BottomNavigationBarItem(
                icon: Icon(Icons.layers), title: Text('布局')),
            BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('其他'))
          ],
          currentIndex: _current,
          onTap: (int index) {
            print(index);
            setState(() {
              _current = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
