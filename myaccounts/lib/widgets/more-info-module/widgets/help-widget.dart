import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Help'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Customer Support'),
                  Text('Customer Survey'),
                ],
              ),
            ),
          ],
        ));
  }
}
