// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_ordo/app/modules/ProductDetail/widgets/carousel_products.dart';
import 'package:test_ordo/app/modules/ProductDetail/widgets/detail_product.dart';
import 'package:test_ordo/app/routes/app_pages.dart';
import 'package:test_ordo/app/utils/bottom_navigation_bar.dart';
import 'package:test_ordo/app/utils/colors.dart';

import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
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
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.CHECK_OUT),
            icon: Icon(
              Icons.shopping_bag,
              color: infoColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: dangerColor,
            ),
          ),
        ],
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: infoColor,
          ),
          child: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 20,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        elevation: 0,
        title: Text(
          'PRODUK DETAIL',
          style: TextStyle(
            color: infoColor,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselProducts(imgList: imgList),
          const DetailProduct(),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
