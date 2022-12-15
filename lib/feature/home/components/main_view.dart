import 'package:flutter/material.dart';

import 'card_view/card_view.dart';
import 'chart_view/chart_view.dart';
import 'product_view/product_view.dart';

class MainView extends StatelessWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xff181818),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: ChartView(),
          ),
          const SizedBox(
            height: 8,
          ),
          const Expanded(
            flex: 2,
            child: CardView(),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 2,
            child: ProductView(),
          ),
        ],
      ),
    );
  }
}
