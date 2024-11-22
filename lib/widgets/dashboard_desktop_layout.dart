import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess.dart';
import 'package:responsiveapp/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsiveapp/widgets/custom_drawer.dart';
import 'package:responsiveapp/widgets/dots_indicator.dart';
import 'package:responsiveapp/widgets/income_section.dart';
import 'package:responsiveapp/widgets/my_card.dart';
import 'package:responsiveapp/widgets/my_card_page_view.dart';
import 'package:responsiveapp/widgets/my_cards_and_transaction_history_section.dart';
import 'package:responsiveapp/widgets/my_cards_section.dart';
import 'package:responsiveapp/widgets/quick_invoice.dart';
import 'package:responsiveapp/widgets/transction_history.dart';

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
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              MyCardsAndTransactionHistorySection(),
              SizedBox(
                height: 24,
              ),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
