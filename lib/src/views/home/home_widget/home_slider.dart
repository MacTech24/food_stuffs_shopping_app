import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants/images.dart';
import 'custom_card.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      const CustomCard(image: tomatoImage),
      const CustomCard(image: beans),
      const CustomCard(image: rice),
      const CustomCard(image: yam),
      const CustomCard(image: onions),
    ];
    Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: size.height * 0.1,
        aspectRatio: 1.5,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        // autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        // enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
