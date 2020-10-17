import 'package:app/widgets/navgation/named_route.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/init/initPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amber,
        ),
        routes: {'back': (context) => BacksPage()},
        home: InitPage());
  }
}
