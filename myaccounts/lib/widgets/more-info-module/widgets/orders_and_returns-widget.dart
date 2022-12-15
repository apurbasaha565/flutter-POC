import 'package:flutter/material.dart';

class OrdersAndReturns extends StatefulWidget {
  const OrdersAndReturns({Key? key}) : super(key: key);

  @override
  _OrdersAndReturnsState createState() => _OrdersAndReturnsState();
}

class _OrdersAndReturnsState extends State<OrdersAndReturns> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(children: <Widget>[
        Container(
          child: Text('Orders & Returns'),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(child: Text('Return Policy')),
              Container(child: Text('Order Status')),
              Container(child: Text('Store Pick-Up')),
              Container(child: Text('Shipping & Delivery')),
              Container(child: Text('Appliance Delivery')),
              Container(child: Text('Price Guarantee')),
              Container(child: Text('Order Cancellation FAQ')),
              Container(child: Text('Buy Now FAQ')),
            ],
          ),
        ),
      ]),
    );
  }
}
