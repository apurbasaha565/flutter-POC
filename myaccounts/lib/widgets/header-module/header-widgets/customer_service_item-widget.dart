import 'package:flutter/material.dart';

class CustomerServiceItem extends StatefulWidget {
  final String menuItemName;
  const CustomerServiceItem({Key? key, required this.menuItemName})
      : super(key: key);

  @override
  _CustomerServiceItemState createState() => _CustomerServiceItemState();
}

class _CustomerServiceItemState extends State<CustomerServiceItem> {
  bool activeItem = false;

  void activateItem(PointerEvent data) {
    setState(() {
      activeItem = true;
    });
  }

  void deactivateItem(PointerEvent data) {
    setState(() {
      activeItem = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: activateItem,
      onExit: deactivateItem,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(bottom: 20, top: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 3.0,
              color: activeItem ? Colors.orange : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          this.widget.menuItemName,
          style: TextStyle(
            fontWeight: activeItem ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
