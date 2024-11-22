import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/all_expensess.dart';
import 'package:responsiveapp/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: const Column(
        children: [
          const AllExpenses(),
          const SizedBox(
            height: 24,
          ),
          const QuickInvoice(),
        ],
      ),
    );
  }
}
