import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsiveapp/widgets/custom_drawer.dart';
import 'package:responsiveapp/widgets/dashboard_mobile_layout.dart';
import 'package:responsiveapp/widgets/income_section.dart';
import 'package:responsiveapp/widgets/my_cards_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashboardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
