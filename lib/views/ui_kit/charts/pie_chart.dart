import 'dart:async';

import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({super.key});

  @override
  State<StatefulWidget> createState() => DonutChartState();
}

class DonutChartState extends State {
  late final List<PieChartSectionData> _pieChartSectionData = _generateData();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bool isChartEmpty = false;
      Timer.periodic(const Duration(seconds: 2), (_) {
        isChartEmpty = !isChartEmpty;

        if (isChartEmpty) {}

        setState(() {});
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  startDegreeOffset: -90,
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  sections: _pieChartSectionData,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Расходы',
                style: context.styles.semibold24.copyWith(
                  color: context.colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '35 000 ₽',
                style: context.styles.regular16.copyWith(
                  color: context.colors.textSecondaryColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '100 000 ₽',
                style: context.styles.regular16.copyWith(
                  color: context.colors.secondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _generateData() {
    return List.generate(4, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            showTitle: false,
            color: context.colors.secondaryColor,
            value: 40,
            radius: 24,
          );
        case 1:
          return PieChartSectionData(
            showTitle: false,
            color: context.colors.purple,
            value: 30,
            radius: 24,
          );
        case 2:
          return PieChartSectionData(
            showTitle: false,
            color: context.colors.blue,
            value: 15,
            radius: 24,
          );
        case 3:
          return PieChartSectionData(
            showTitle: false,
            color: context.colors.red,
            value: 15,
            radius: 24,
          );
        default:
          throw Error();
      }
    });
  }
}
