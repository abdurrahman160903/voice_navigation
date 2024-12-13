import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:voice_navigation/common_widgets/app_bar_widget.dart';

class SpeedometerPage extends StatelessWidget {
  const SpeedometerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: Text(
          'speedometer'.tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
          child: Container(
              child: SfRadialGauge(axes: <RadialAxis>[
        RadialAxis(minimum: 0, maximum: 240.1, ranges: <GaugeRange>[
          GaugeRange(startValue: 0, endValue: 240, color: Colors.green),
          // GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
          // GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
        ], pointers: <GaugePointer>[
          NeedlePointer(value: 0),
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Container(
                  child: Text('90.0',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              angle: 90,
              positionFactor: 0.5)
        ])
      ]))),
    );
  }
}
