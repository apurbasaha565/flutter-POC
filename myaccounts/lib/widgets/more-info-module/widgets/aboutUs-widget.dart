import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: <Widget>[
          Container(child: Text('About Us')),
          Container(
            child: Column(
              children: <Widget>[
                Text('Careers in Canada'),
                Text('Company Information'),
                Text('Store Locator'),
                Text('Holiday Store Hours'),
                Text('The Home Depot Canada Foundation'),
                Text('Become an Affiliate'),
                Text('Media Relations'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
