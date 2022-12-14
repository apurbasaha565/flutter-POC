import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Text('Insert logo'),
    );
  }
}
