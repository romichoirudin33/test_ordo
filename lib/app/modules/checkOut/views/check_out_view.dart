// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check_out_controller.dart';

class CheckOutView extends GetView<CheckOutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOutView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CheckOutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
