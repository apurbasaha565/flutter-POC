import 'package:flutter/material.dart';

class AccountDetailsAndCartWidget extends StatefulWidget {
  const AccountDetailsAndCartWidget({Key? key}) : super(key: key);

  @override
  State<AccountDetailsAndCartWidget> createState() =>
      _AccountDetailsAndCartWidgetState();
}

class _AccountDetailsAndCartWidgetState
    extends State<AccountDetailsAndCartWidget> {
  //add boolean to control hover event here
  bool accountDetailOnHover = false;
  bool cartOnHover = false;

  void cartHover(PointerEvent details) {
    setState(() {
      cartOnHover = true;
    });
  }

  void onCartExit(PointerEvent details) {
    setState(() {
      cartOnHover = false;
    });
  }

  void accountDetailHover(PointerEvent details) {
    setState(() {
      accountDetailOnHover = true;
    });
  }

  void accountDetailExit(PointerEvent details) {
    setState(() {
      accountDetailOnHover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.46,
      alignment: Alignment.centerRight,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MouseRegion(
              onHover: accountDetailHover,
              onExit: accountDetailExit,
              cursor: SystemMouseCursors.click,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Icon(Icons.person),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text(
                      'Hi User,',
                      style: TextStyle(
                          fontWeight: accountDetailOnHover
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Text('My Account',
                        style: TextStyle(
                            fontWeight: accountDetailOnHover
                                ? FontWeight.bold
                                : FontWeight.normal)),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            const VerticalDivider(),
            MouseRegion(
              onHover: cartHover,
              onExit: onCartExit,
              cursor: SystemMouseCursors.click,
              child: Row(
                children: [
                  Icon(Icons.shopping_cart, size: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Text('Cart',
                        style: TextStyle(
                            fontWeight: cartOnHover
                                ? FontWeight.bold
                                : FontWeight.normal)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
