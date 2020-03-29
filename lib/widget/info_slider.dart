import 'package:covid19/data/info_data.dart';
import 'package:covid19/widget/info_slider_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class InfoSlider extends StatefulWidget {
  final List<InfoData> infoDataList = [
    InfoData(
        title: "Sering-Sering Mencuci Tangan",
        description:
            "Pentingnya menjaga kebersihan tangan membuat Anda memiliki risiko rendah terjangkit berbagai penyakit."),
    InfoData(
        title: "Hindari Menyentuh Area Wajah",
        description:
        "Sangat penting menjaga kebersihan tangan sebelum dan sesudah bersentuhan dengan benda atau bersalaman dengan orang lain."),
    InfoData(
        title: "Hindari Berjabat Tangan dan Berpelukan",
        description:
        "Menghindari kontak kulit seperti berjabat tangan mampu mencegah penyebaran virus Corona. Tangan dan wajah bisa menjadi media penyebaran virus Corona."),
    InfoData(
        title: "Jangan Berbagi Barang Pribadi",
        description:
        "Virus Corona mampu bertahan di permukaan hingga tiga hari. Penting untuk tidak berbagi peralatan makan, sedotan, handphone, dan sisir."),
    InfoData(
        title: "Etika ketika Bersin dan Batuk",
        description:
        "Ketika Anda bersin dan batuk, tutup mulut dan hidung agar orang yang ada di sekitar tidak terpapar percikan kelenjar liur."),
    InfoData(
        title: "Bersihkan Perabotan di Rumah",
        description:
        "Bersihkan permukaan perabotan rumah yang rentan tersentuh, seperti gagang pintu, meja, furnitur, laptop, handphone, apa pun, secara teratur."),
    InfoData(
        title: "Jaga Jarak Sosial",
        description:
        "Dengan menerapkan physical distancing ketika beraktivitas di luar ruangan atau tempat umum, Anda sudah melakukan satu langkah mencegah terinfeksi virus Corona."),
    InfoData(
        title: "Hindari Berkumpul dalam Jumlah Banyak",
        description:
        "Untuk saat ini, dianjurkan lebih baik melakukan aktivitas di rumah agar pandemi virus Corona cepat berlalu."),
    InfoData(
        title: "Mencuci Bahan Makanan",
        description:
        "Rendam bahan makanan, seperti buah-buah dan sayur-sayuran menggunakan larutan hidrogen peroksida atau cuka putih yang aman untuk makanan."),
    ];

  @override
  _InfoSliderState createState() => _InfoSliderState();
}

class _InfoSliderState extends State<InfoSlider> {
  SwiperController _controller = SwiperController();
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Swiper.children(
        index: position,
        loop: true,
        autoplay: true,
        controller: _controller,
        onIndexChanged: (newIndex) {
          setState(() {
            position = newIndex;
          });
        },
        pagination: SwiperPagination(
            margin: EdgeInsets.only(bottom: 6),
            builder: DotSwiperPaginationBuilder(
              color: Colors.deepPurple[200],
              activeColor: Colors.deepPurple[700],
              size: 6,
              activeSize: 6,
            )),
        control: SwiperControl(iconNext: null, iconPrevious: null),
        children: _buildInfoSlideChildren(widget.infoDataList),
      ),
    );
  }

  List<Widget> _buildInfoSlideChildren(List<InfoData> infoDataList) {
    return infoDataList.map((info) => InfoSliderItem(infoData: info)).toList();
  }
}
