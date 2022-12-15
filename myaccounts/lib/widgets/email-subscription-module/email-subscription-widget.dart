import 'package:flutter/material.dart';

class EmailSubscription extends StatefulWidget {
  const EmailSubscription({Key? key}) : super(key: key);

  @override
  _EmailSubscriptionState createState() => _EmailSubscriptionState();
}

class _EmailSubscriptionState extends State<EmailSubscription> {
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
            child: Text('insert button here'),
          ),
        ],
      ),
    );
  }
}
