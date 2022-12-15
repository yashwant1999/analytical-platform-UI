import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';

class BarChartView extends StatelessWidget {
  const BarChartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 300.0,
        maxWidth: 500.0,
      ),
      padding: const EdgeInsets.all(24.0),
      child: Chart(
        layers: layers(),
        padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(
          bottom: 12.0,
        ),
      ),
    );
  }

  List<ChartLayer> layers() {
    return [
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: 1.0,
            max: 12.0,
            min: 7.0,
            textStyle: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 10.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 100.0,
            max: 300.0,
            min: 0.0,
            textStyle: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 10.0,
            ),
          ),
        ),
        labelX: (value) => value.toInt().toString(),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartGroupBarLayer(
        items: List.generate(
          20 - 7 + 1,
          (index) => [
            ChartGroupBarDataItem(
              color: const Color(0xFF9719DF),
              x: index + 7,
              value: Random().nextInt(280) + 20,
            ),
            ChartGroupBarDataItem(
              color: const Color(0xFF410360),
              x: index + 7,
              value: Random().nextInt(280) + 20,
            ),
          ],
        ),
        settings: const ChartGroupBarSettings(
          thickness: 20.0,
          radius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipBarShape<ChartGroupBarDataItem>(
          backgroundColor: Colors.black,
          currentPos: (item) => item.currentValuePos,
          currentSize: (item) => item.currentValueSize,
          onTextValue: (item) => '€${item.value.toString()}',
          marginBottom: 6.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle: const TextStyle(
            // color: Color(0xFF8043F9),
            color: Colors.white,
            letterSpacing: 0.2,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ];
  }
}
