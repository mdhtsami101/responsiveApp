import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess.dart';
import 'package:responsiveapp/widgets/custom_drawer.dart';

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
          child: Column(
            children: [Expanded(child: AllExpenses())],
          ),
        ),
      ],
    );
  }
}
