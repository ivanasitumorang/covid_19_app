import 'package:covid19/widget/card_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Update Terkini"
                  ),
                  Text(
                    "21 Maret 2020 20:00 WIB"
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 24,
                primary: false,
                shrinkWrap: true,
                children: <Widget>[
                  CardBox(
                    number: "450",
                    description: "Positif",
                  ),
                  CardBox(
                    number: "20",
                    description: "Sembuh",
                  ),
                  CardBox(
                    number: "80",
                    description: "Meninggal",
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Total = 1000",
              )
            ],
          ),
        ),
      ),
    );
  }
}