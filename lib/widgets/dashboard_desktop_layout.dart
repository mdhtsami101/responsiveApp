import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess.dart';
import 'package:responsiveapp/widgets/custom_drawer.dart';
import 'package:responsiveapp/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
