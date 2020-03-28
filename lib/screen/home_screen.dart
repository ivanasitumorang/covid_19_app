import 'package:covid19/widget/card_box.dart';
import 'package:covid19/widget/info_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                _buildHeadline(),
                SizedBox(
                  height: 16,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(color: Colors.blue[200], child: InfoSlider())),
                SizedBox(
                  height: 20,
                ),
                _buildLatestUpdate("Update terkini"),
                SizedBox(
                  height: 20,
                ),
                _buildContactUs("Hubungi Kami"),
                SizedBox(
                  height: 20,
                ),
                _buildCovidNews("News about Covid-19")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeadline() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Current Outbreak",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Indonesia",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Text("Friday, 21 Maret 2020",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[500])),
      ],
    );
  }

  Widget _buildTitleSeparation(
      {String textLeft, String textRight = "Lihat Semua"}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          textLeft,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Text(
          textRight,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[500]),
        ),
      ],
    );
  }

  Widget _buildLatestUpdate(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTitleSeparation(textLeft: title, textRight: "21 Maret 2020 20:00 WIB"),
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
          height: 8,
        ),
        Text(
          "Total = 550",
        ),
      ],
    );
  }

  Widget _buildContactUs(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTitleSeparation(textLeft: title),
        GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          primary: false,
          shrinkWrap: true,
          children: <Widget>[
            CardBox(
              description: "Nomor Darurat",
            ),
            CardBox(
              description: "Lapor Kasus",
            ),
            CardBox(
              description: "Tanya Dokter",
            ),
            CardBox(
              description: "Data Rumah Sakit",
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCovidNews(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTitleSeparation(textLeft: title),
        SizedBox(
          height: 16,
        ),
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Container(color: Colors.blue, child: InfoSlider())),
      ],
    );
  }
}
