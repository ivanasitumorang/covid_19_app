import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {

  final String number;
  final String description;

  CardBox({
    Key key,
    @required this.number,
    @required this.description
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.lightBlue
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number,
            ),
            Text(
              description
            )
          ],
        ),
      ),
    );
  }

}