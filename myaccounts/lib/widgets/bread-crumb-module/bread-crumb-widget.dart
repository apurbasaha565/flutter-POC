import 'package:flutter/material.dart';

class BreadCrumb extends StatelessWidget {
  const BreadCrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(child: Icon(Icons.keyboard_arrow_right)),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              'My Account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
