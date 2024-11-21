import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        const Text(
          '13 April 2022',
          style: AppStyles.styleRegular14,
        ),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See all',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0XFF4EB7F2)),
        ),
      ],
    );
  }
}
