import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: <Widget>[
          Container(
            child: Text('Resources'),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text('Credit Services'),
                Text('Protection Plans'),
                Text('Product Recalls'),
                Text('Gift Cards'),
                Text('The Home Depot Mobile App'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
