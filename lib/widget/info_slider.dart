import 'package:covid19/data/info_data.dart';
import 'package:covid19/widget/info_slider_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class InfoSlider extends StatefulWidget {
  final List<InfoData> infoDataList = [
    InfoData(
        title: "On Boarding 1",
        description:
            "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    InfoData(
        title: "On Boarding 2",
        description:
            "2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    InfoData(
        title: "On Boarding 3",
        description:
            "3. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    InfoData(
        title: "On Boarding 4",
        description:
            "4. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
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
            margin: EdgeInsets.only(bottom: 8),
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
