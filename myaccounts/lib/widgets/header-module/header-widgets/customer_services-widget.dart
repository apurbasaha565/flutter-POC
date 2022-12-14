import 'package:flutter/material.dart';

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
  bool activeItem = false;

  void activateItem(PointerEvent data) {
    print(data);
    setState(() {
      activeItem = true;
    });
  }

  void deactivateItem(PointerEvent data) {
    setState(() {
      activeItem = false;
    });
  }

  List<Widget> _buildMenuItems(List<String> menuItems) {
    List<Widget> menuItemsList = [];
    for (int i = 0; i < menuItems.length; i++) {
      menuItemsList.add(MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: activateItem,
          onExit: deactivateItem,
          child: Container(
            // decoration: BoxDecoration(
            //   border: Border(
            //       bottom: BorderSide(
            // width: 5,
            // color: Colors.orange,
            // ))),
            child: Text(
              menuItems[i],
              // style: TextStyle(
              //   fontWeight: activeItem ? FontWeight.bold : FontWeight.normal,
              // ),
            ),
          )));
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
