import 'package:flutter/material.dart';

class BuyAgain extends StatelessWidget {
  const BuyAgain({Key? key}) : super(key: key);

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
                    'Buy Again',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                    'Once you\'ve completed a purchase, select items to buy again for quick and easy reordering.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
