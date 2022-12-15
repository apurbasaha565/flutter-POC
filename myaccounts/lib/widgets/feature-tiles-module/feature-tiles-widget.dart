import 'package:flutter/material.dart';

class FeatureTiles extends StatefulWidget {
  const FeatureTiles({Key? key}) : super(key: key);

  @override
  _FeatureTilesState createState() => _FeatureTilesState();
}

class _FeatureTilesState extends State<FeatureTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3333,
      child: Stack(children: <Widget>[
        
      ]),
    );
  }
}
