import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RecentOrders extends StatefulWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  _RecentOrdersState createState() => _RecentOrdersState();
}

class _RecentOrdersState extends State<RecentOrders> {
  bool buttonOnHover = false;

  void onButtonHover(PointerEnterEvent data) {
    setState(() {
      buttonOnHover = true;
    });
  }

  void onButtonLeave(PointerExitEvent data) {
    setState(() {
      buttonOnHover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: (Colors.grey[350])!),
      ),
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Recent Orders',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Text('You have not placed any orders yet.'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            alignment: Alignment.centerRight,
            child: Container(
              width: 240.0,
              height: 48.0,
              child: MouseRegion(
                onEnter: onButtonHover,
                onExit: onButtonLeave,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor:
                        buttonOnHover ? Colors.orange[900] : Colors.white,
                    side: BorderSide(
                      color: (Colors.orange[900])!,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Text('Start Shopping',
                      style: TextStyle(
                        color:
                            buttonOnHover ? Colors.white : Colors.orange[900],
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
