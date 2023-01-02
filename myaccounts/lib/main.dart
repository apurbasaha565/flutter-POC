import 'package:flutter/material.dart';
import 'package:myaccounts/widgets/bread-crumb-module/bread-crumb-widget.dart';
import 'package:myaccounts/widgets/buy-again-module/buy-again-widget.dart';
import 'package:myaccounts/widgets/email-subscription-module/email-subscription-widget.dart';
import 'package:myaccounts/widgets/feature-tiles-list-module/feature-tiles-list-widget.dart';
import 'package:myaccounts/widgets/header-module/header.dart';
import 'package:myaccounts/widgets/more-info-module/more-info-widget.dart';
import 'package:myaccounts/widgets/need-help-module/need-help-widget.dart';
import 'package:myaccounts/widgets/recent-orders-module/recent-orders-widget.dart';
import 'package:myaccounts/widgets/title-module/title-widget.dart';

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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
              child: Column(
            children: [
              // Header(),
              BreadCrumb(),
              TitleWidget(), //need to convert this to stateful widget to accept user input
              RecentOrders(),
              BuyAgain(),
              FeatureTileList(),
              // EmailSubscription(),
              // NeedHelp(),
              // MoreInfo(),
            ],
          )),
        ));
  }
}
