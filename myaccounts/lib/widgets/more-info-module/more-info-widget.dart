import 'package:flutter/material.dart';
import 'package:myaccounts/widgets/more-info-module/widgets/aboutUs-widget.dart';
import 'package:myaccounts/widgets/more-info-module/widgets/help-widget.dart';
import 'package:myaccounts/widgets/more-info-module/widgets/orders_and_returns-widget.dart';
import 'package:myaccounts/widgets/more-info-module/widgets/resources-widget.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(children: <Widget>[
        OrdersAndReturns(),
        Help(),
        Resources(),
        AboutUs(),
      ]),
    );
  }
}
