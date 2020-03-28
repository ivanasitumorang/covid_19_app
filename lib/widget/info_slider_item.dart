import 'package:covid19/data/info_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoSliderItem extends StatelessWidget {
  final InfoData infoData;

  InfoSliderItem({
    Key key,
    @required this.infoData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(infoData.title),
          Text(infoData.description),
        ],
      ),
    );
  }
}
