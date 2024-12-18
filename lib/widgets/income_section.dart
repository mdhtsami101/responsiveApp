import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/app_styles.dart';
import 'package:responsiveapp/widgets/costom_background_container.dart';
import 'package:responsiveapp/widgets/income_chart.dart';
import 'package:responsiveapp/widgets/income_details.dart';
import 'package:responsiveapp/widgets/income_section_body.dart';
import 'package:responsiveapp/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
