import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 1,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Place your orders by December 15 to get them delivered in time for the holidays.'),
          Container(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Text(
                "Learn More",
                style: TextStyle(
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -2))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1,
                  // decorationStyle: TextDecorationStyle.,
                ),
              )
              // Text('Learn More',
              //     style: TextStyle(
              //       // fontSize: 50,
              //       decoration: TextDecoration.underline, // <-- SEE HERE
              //     )),
              ),
        ],
      ),
    );
  }
}
