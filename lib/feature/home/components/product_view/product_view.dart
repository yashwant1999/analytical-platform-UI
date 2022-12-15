import 'package:flutter/material.dart';

import 'product_entries.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xff101010),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'New Product',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ProductEntry(
            title: 'Template Online Store',
          ),
          const SizedBox(
            height: 10,
          ),
          ProductEntry(
            isSuccessful: false,
            title: 'Advertisment Campaign',
          ),
          const SizedBox(
            height: 10,
          ),
          ProductEntry(
            title: 'Template Online Store',
          ),
        ],
      ),
    );
  }
}
