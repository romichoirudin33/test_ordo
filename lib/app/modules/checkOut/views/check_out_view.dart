// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:test_ordo/app/modules/checkOut/widgets/detail_payments.dart';
import 'package:test_ordo/app/modules/checkOut/widgets/note_order.dart';
import 'package:test_ordo/app/modules/checkOut/widgets/products.dart';
import 'package:test_ordo/app/utils/colors.dart';

import '../controllers/check_out_controller.dart';

class CheckOutView extends GetView<CheckOutController> {
  final items = List<String>.generate(2, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
          'Checkout',
          style: TextStyle(
            color: infoColor,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Slidable(
              key: const ValueKey(0),
              startActionPane: null,
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: [
                  SlidableAction(
                    onPressed: null,
                    backgroundColor: Colors.transparent,
                    foregroundColor: dangerColor,
                    icon: Icons.delete,
                  ),
                ],
              ),
              child: const Products(),
            );
          },
        ),
        const NoteOrder(),
        const DetailPayments(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: Get.mediaQuery.size.width,
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Waktu Pengantaran"),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: Get.mediaQuery.size.width,
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Alamat Pengiriman"),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),
        Container(
          width: Get.mediaQuery.size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  3,
                ),
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: selectedNavbar,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          width: Get.mediaQuery.size.width,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {},
            child: const Text("Bayar Sekarang"),
          ),
        ),
      ]),
    );
  }
}
