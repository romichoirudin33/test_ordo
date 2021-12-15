// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_ordo/app/modules/home/widgets/list_product.dart';
import 'package:test_ordo/app/utils/bottom_navigation_bar.dart';
import 'package:test_ordo/app/utils/colors.dart';

import '../controllers/home_controller.dart';
import '../widgets/carousel.dart';

class HomeView extends GetView<HomeController> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          height: 60,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: selectedNavbar,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: secondaryText, fontSize: 12),
                hintText: "Cari dengan mengetik barang",
                fillColor: whiteColor),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
            decoration: BoxDecoration(
              color: infoColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(5),
            child: Icon(Icons.settings),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5.0),
            decoration: BoxDecoration(
              color: warningColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(5),
            child: Icon(Icons.shopping_bag),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 30, bottom: 10, left: 5.0),
            decoration: BoxDecoration(
              color: dangerColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(5),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            MyCarousel(imgList: imgList),
            ListProducts(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
