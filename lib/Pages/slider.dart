import 'package:BooKart/util/const.dart';
import 'package:BooKart/util/generic_image_container.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        GenericImageContainer(
          imagesName: 'carousel_slider_1.jpg',
          baseImageDir: baseImageDir,
        ),
        GenericImageContainer(
          imagesName: 'carousel_slider_2.jpg',
          baseImageDir: baseImageDir,
        ),
        GenericImageContainer(
          imagesName: 'carousel_slider_3.jpg',
          baseImageDir: baseImageDir,
        ),
        GenericImageContainer(
          imagesName: 'carousel_slider_4.jpg',
          baseImageDir: baseImageDir,
        ),
        GenericImageContainer(
          imagesName: 'carousel_slider_5.jpg',
          baseImageDir: baseImageDir,
        ),
      ],
      options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayCurve: Curves.easeIn,
          reverse: true,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 0.85),
    );
  }
}
