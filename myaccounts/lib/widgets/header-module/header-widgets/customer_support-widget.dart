import 'package:flutter/material.dart';

import 'customer_support_item-widget.dart';

class CustomerSupportWidget extends StatelessWidget {
  const CustomerSupportWidget({Key? key}) : super(key: key);

  static const List<String> menuItems = [
    'Rental',
    'Credit Services',
    'For the Pro',
    'Order Status',
    'Customer Support',
    'Gift Cards',
    'Francais'
  ];

  List<Widget> _buildMenuFromList(List<String> menuItems) {
    List<Widget> menuItemsList = [];
    for (int i = 0; i < menuItems.length; i++) {
      menuItemsList.add(CustomerSupportItem(menuItemValue: menuItems[i]));
    }
    return menuItemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.46,
      child: Wrap(
        spacing: 15.0,
        children: _buildMenuFromList(menuItems),
      ),
    );
  }
}
