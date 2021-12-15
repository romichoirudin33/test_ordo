import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ordo/app/utils/colors.dart';

class DetailPayments extends StatelessWidget {
  const DetailPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Detail Pembayaran',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: primaryText,
              ),
            ),
          ),
          Text(
            'Tas Gucci',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: primaryText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '(Qty. 1)',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
                Text(
                  'Rp. 75.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Tas Eiger',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: primaryText,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '(Qty. 1)',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
                Text(
                  'Rp. 75.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongkos Kirim',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
                Text(
                  'Rp. 10.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: placeholderText,
            width: Get.mediaQuery.size.width,
            height: 0.5,
            margin: const EdgeInsets.only(bottom: 10.0),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: primaryText,
                  ),
                ),
                Text(
                  'Rp. 450.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: primaryText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
