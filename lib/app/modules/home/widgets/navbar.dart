// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/app/utils/colors.dart';

class MyNavbar extends StatelessWidget {
  const MyNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.mediaQuery.size.width;
    return Container(
      width: width,
      margin: EdgeInsets.only(top: 12.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: infoColor,
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
            ),
            child: IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: warningColor,
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_bag),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: dangerColor,
              borderRadius: BorderRadius.all(Radius.circular(13.0)),
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
