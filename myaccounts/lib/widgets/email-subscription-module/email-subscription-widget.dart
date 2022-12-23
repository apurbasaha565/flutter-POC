import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EmailSubscription extends StatefulWidget {
  const EmailSubscription({Key? key}) : super(key: key);

  @override
  _EmailSubscriptionState createState() => _EmailSubscriptionState();
}

class _EmailSubscriptionState extends State<EmailSubscription> {
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
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: (Colors.grey[200])!,
        ),
        color: Colors.grey[200],
      ),
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: 90,
                  height: 100,
                  child: Image.asset('assets/envelope.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Get Warehouse Value delivered to your inbox. Subscribe to The Home Depot emails.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 240.0,
            height: 48.0,
            child: MouseRegion(
              onEnter: onButtonHover,
              onExit: onButtonLeave,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor:
                      buttonOnHover ? Colors.orange[800] : Colors.orange[900],
                  side: BorderSide(
                    color: (Colors.orange[900])!,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Text('Subscribe',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
