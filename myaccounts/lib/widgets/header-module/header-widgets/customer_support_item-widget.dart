import 'package:flutter/material.dart';

class CustomerSupportItem extends StatefulWidget {
  final String menuItemValue;
  const CustomerSupportItem({Key? key, required this.menuItemValue})
      : super(key: key);

  @override
  _CustomerSupportItemState createState() => _CustomerSupportItemState();
}

class _CustomerSupportItemState extends State<CustomerSupportItem> {
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
        // padding: const EdgeInsets.only(right: 15),
        //modify the style
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: activeItem ? Colors.black : Colors.transparent,
            ),
          ),
        ),
        child: Text(this.widget.menuItemValue),
      ),
    );
  }
}
