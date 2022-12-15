import 'package:flutter/material.dart';

import 'customer_service_item-widget.dart';

class CustomerServiceWidget extends StatefulWidget {
  const CustomerServiceWidget({Key? key}) : super(key: key);

  static const List<String> menuItems = [
    'Shop by Department',
    'Shop by Room',
    'Ideas & How-to',
    'Home Services',
    'Warehouse Value & Specials',
    'Weekly flyer'
  ];

  @override
  State<CustomerServiceWidget> createState() => _CustomerServiceWidgetState();
}

class _CustomerServiceWidgetState extends State<CustomerServiceWidget> {
  List<Widget> _buildMenuItems(List<String> menuItems) {
    List<Widget> menuItemsList = [];
    for (int i = 0; i < menuItems.length; i++) {
      menuItemsList.add(CustomerServiceItem(menuItemName: menuItems[i]));
    }
    return menuItemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 10.0,
        children: _buildMenuItems(CustomerServiceWidget.menuItems),
      ),
    );
  }
}
