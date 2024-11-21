import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess.dart';
import 'package:responsiveapp/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsiveapp/widgets/custom_drawer.dart';
import 'package:responsiveapp/widgets/my_card.dart';
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
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        Expanded(child: MyCard()),
      ],
    );
  }
}
