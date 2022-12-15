import 'package:flutter/material.dart';

class NeedHelp extends StatefulWidget {
  const NeedHelp({Key? key}) : super(key: key);

  @override
  _NeedHelpState createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  'Need Help',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Customer Support',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(children: <Widget>[
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/instagram.png')),
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/facebook.png')),
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/twitter.png')),
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/pinterest.png')),
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/youtube.png')),
              Container(
                  width: 28,
                  height: 28,
                  child: Image.asset('assets/linkedin.png')),
              Container(
                  width: 150,
                  height: 70,
                  child: Image.asset('assets/google-play-store.png')),
              Container(
                  width: 150,
                  height: 70,
                  child: Image.asset('assets/apple-app-store.png')),
            ]),
          ),
        ],
      ),
    );
  }
}
