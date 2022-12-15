import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Text(
          'Account Dashboard',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ));
  }
}
