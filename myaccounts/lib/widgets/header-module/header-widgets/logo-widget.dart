import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08,
      child: Image.asset(
        'assets/logo.png',
        width: 75,
        height: 75,
      ),
    );
  }
}
