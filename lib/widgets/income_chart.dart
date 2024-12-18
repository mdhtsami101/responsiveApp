import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0XFF208BC7),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0XFF4DB7F2),
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          showTitle: false,
          color: const Color(0XFF064060),
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          showTitle: false,
          color: const Color(0XFFE2DECD),
        ),
      ],
    );
  }
}
