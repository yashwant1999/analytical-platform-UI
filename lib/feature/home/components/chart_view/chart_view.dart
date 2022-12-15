import 'package:flutter/material.dart';

import 'barChart.dart';
import 'datePicker.dart';
import 'navigationButton.dart';

class ChartView extends StatelessWidget {
  const ChartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          // color: const Color(0xff101010),

          color: const Color(0xffA73BF3),
          borderRadius: BorderRadius.circular(30)),
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.bottomLeft,
            child: BarChartView(),
          ),
          Text(
            'External Report. 2022',
            style: TextStyle(fontSize: 35),
          ),
          Align(
            alignment: Alignment.topRight,
            child: DatePicker(),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: NavigationButton(),
          )
        ],
      ),
    );
  }
}
