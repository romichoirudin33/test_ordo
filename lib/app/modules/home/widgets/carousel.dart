// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({Key? key, required this.imgList}) : super(key: key);

  final List<String> imgList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          viewportFraction: 1,
          enlargeCenterPage: true,
        ),
        items: imgList
            .map((item) => ItemCarousel(
                  urlImage: item,
                ))
            .toList(),
      ),
    );
  }
}

class ItemCarousel extends StatelessWidget {
  const ItemCarousel({Key? key, required this.urlImage}) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        'assets/banner.png',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
