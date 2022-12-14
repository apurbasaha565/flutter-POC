import 'package:flutter/material.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/account_details_cart-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/customer_services-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/customer_support-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/header_banner-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/location-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/logo-widget.dart';
import 'package:myaccounts/widgets/header-module/header-widgets/search_bar-widget.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2.0, color: Colors.grey.shade400),
            ),
          ),
          padding:
              const EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 20),
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                LogoWidget(),
                Container(
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        LocationWidget(),
                        CustomerSupportWidget(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SearchBarWidget(),
                        AccountDetailsAndCartWidget(),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
            CustomerServiceWidget()
          ]),
        ),
        HeaderBanner()
      ],
    );
  }
}
