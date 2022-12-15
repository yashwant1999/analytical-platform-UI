import 'package:flutter/material.dart';

import 'custom_card.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomCard(
            onPressed: () {},
            title: 'All Followers',
            amount: r'+ $1.204',
            color: const Color(0xFFA543EC),
          ),
          const SizedBox(
            width: 8,
          ),
          CustomCard(
            onPressed: () {},
            title: 'All User',
            amount: r'+ 0.264',
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 8,
          ),
          CustomCard(
            onPressed: () {},
            title: 'Total Earning',
            amount: r'+ $1.402',
            color: Colors.green,
          ),
          const SizedBox(
            width: 8,
          ),
          CustomCard(onPressed: () {}, title: 'All User', amount: '20,00'),
          const SizedBox(
            width: 8,
          ),
          CustomCard(onPressed: () {}, title: 'All User', amount: '20,00')
        ],
      ),
    );
  }
}
