import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final String number;
  final String description;
  final Color backgroundColor;

  CardBox({Key key, this.number, @required this.description, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (backgroundColor != null)
          ? backgroundColor
          : Colors.lightBlue[300],),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            (number != null)
                ? Column(
                    children: <Widget>[
                      Text(
                        number,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  )
                : Container(),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
