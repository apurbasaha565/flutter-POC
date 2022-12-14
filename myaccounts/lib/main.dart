import 'package:flutter/material.dart';
import 'package:myaccounts/widgets/header-module/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Header(),
        ],
      )),
    ));
  }
}
