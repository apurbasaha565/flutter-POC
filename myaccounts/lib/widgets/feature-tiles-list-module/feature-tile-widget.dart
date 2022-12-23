import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myaccounts/models/feature-tile-model.dart';

class FeatureTile extends StatefulWidget {
  final FeatureTileModel cardDetails;
  const FeatureTile({
    Key? key,
    required FeatureTileModel this.cardDetails,
  }) : super(key: key);

  @override
  _FeatureTileState createState() => _FeatureTileState();
}

class _FeatureTileState extends State<FeatureTile> {
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
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 230),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: (Colors.grey[350])!,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.314,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Text(
                  this.widget.cardDetails.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            widget.cardDetails.subHeading != null
                ? Text(
                    widget.cardDetails.subHeading ?? 'User Name',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Container(),
            widget.cardDetails.description != null
                ? Text(
                    widget.cardDetails.description ?? 'description',
                    style: const TextStyle(fontSize: 16),
                  )
                : Container(),
            // Center(
            // widthFactor: 200,
            // child:
            widget.cardDetails.storeInfo != null
                ? Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.cardDetails.storeInfo!.storeName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Change Store',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 19, 106, 182)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              widget.cardDetails.storeInfo!.storeContactNumber,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 19, 106, 182))),
                        ),
                        Container(
                          child: Row(children: <Widget>[
                            Text(
                              style: TextStyle(
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.bold),
                              widget.cardDetails.storeInfo!.storeStatus,
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
                            Text(widget.cardDetails.storeInfo!.storeOpenTime),
                          ]),
                        ),
                      ],
                    ),
                  )
                : Container(),
            widget.cardDetails.buttonInfo != null
                ? Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 380.0,
                    height: 40.0,
                    child: MouseRegion(
                      onEnter: onButtonHover,
                      onExit: onButtonLeave,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                              buttonOnHover ? Colors.orange[900] : Colors.white,
                          side: BorderSide(
                            color: (Colors.orange[900])!,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Text(widget.cardDetails.buttonInfo!.buttonTitle,
                            style: TextStyle(
                              color: buttonOnHover
                                  ? Colors.white
                                  : Colors.orange[900],
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () {
                          widget.cardDetails.buttonInfo!.buttonOnClick();
                        },
                      ),
                    ),
                  )
                : Container(),
            // ),
            widget.cardDetails.proExtra != null
                ? Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          widget.cardDetails.proExtra ?? '',
                          style: TextStyle(
                            color: Color.fromARGB(255, 19, 106, 182),
                          ),
                        ),
                        Icon(Icons.arrow_right,
                            color: Color.fromARGB(255, 19, 106, 182)),
                      ],
                    ),
                  )
                : Container(),
            widget.cardDetails.imageData != null
                ? Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(widget.cardDetails.imageData ?? ''),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
