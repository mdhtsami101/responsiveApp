import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsiveapp/widgets/income_section.dart';
import 'package:responsiveapp/widgets/my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: const Column(
        children: [
          const AllExpensessAndQuickInvoiceSection(),
          const SizedBox(
            height: 24,
          ),
          const MyCardsAndTransactionHistorySection(),
          const SizedBox(
            height: 24,
          ),
          const IncomeSection(),
        ],
      ),
    );
  }
}
