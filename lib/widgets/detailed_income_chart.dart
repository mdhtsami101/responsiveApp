import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          title: activeIndex == 0 ? 'Design service' : '40%',
          value: 40,
          titlePositionPercentageOffset: activeIndex == 0 ? -1.5 : null,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0XFF208BC7),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          titlePositionPercentageOffset: activeIndex == 1 ? -1.5 : null,
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0XFF4DB7F2),
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          titlePositionPercentageOffset: activeIndex == 2 ? -1.5 : null,
          radius: activeIndex == 2 ? 50 : 40,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          color: const Color(0XFF064060),
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          titlePositionPercentageOffset: activeIndex == 3 ? -1.5 : null,
          radius: activeIndex == 3 ? 50 : 40,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          color: const Color(0XFFE2DECD),
        ),
      ],
    );
  }
}
