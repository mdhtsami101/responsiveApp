import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/size_config.dart';
import 'package:responsiveapp/widgets/detailed_income_chart.dart';
import 'package:responsiveapp/widgets/income_chart.dart';
import 'package:responsiveapp/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: const DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: const IncomeChart()),
              const Expanded(flex: 2, child: const IncomeDetails()),
            ],
          );
    return width >= 1750
        ? const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: const IncomeChart()),
              const Expanded(flex: 2, child: const IncomeDetails()),
            ],
          )
        : const SizedBox();
  }
}
