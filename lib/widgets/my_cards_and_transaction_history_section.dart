import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/costom_background_container.dart';
import 'package:responsiveapp/widgets/my_cards_section.dart';
import 'package:responsiveapp/widgets/transction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0XFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
