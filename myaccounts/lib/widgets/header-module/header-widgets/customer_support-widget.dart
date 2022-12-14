import 'package:flutter/material.dart';

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
      menuItemsList.add(Container(
        // padding: const EdgeInsets.only(right: 15),
        child: Text(menuItems[i]),
      ));
    }
    return menuItemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.blue,
          ),
      width: MediaQuery.of(context).size.width * 0.46,
      child: Wrap(
        spacing: 15.0,
        children: _buildMenuFromList(menuItems),
      ),
    );
  }
}
