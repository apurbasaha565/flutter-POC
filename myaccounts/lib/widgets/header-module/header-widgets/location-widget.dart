import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: Icon(
                size: 20.0,
                Icons.location_on,
                color: Colors.orange[600],
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text('My Store:'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: Text(
                      'Scanborough',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: VerticalDivider(),
                  ),
                  Text(
                    style: TextStyle(
                        color: Colors.green[700], fontWeight: FontWeight.bold),
                    'Open',
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Icon(
                      size: 4.0,
                      Icons.circle,
                    ),
                  ),
                  Text('Closes 8 p.m.'),
                  Icon(
                    size: 25.0,
                    Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
