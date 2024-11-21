import 'package:flutter/material.dart';
import 'package:responsiveapp/models/transaction_model.dart';
import 'package:responsiveapp/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.data,
          style: AppStyles.styleRegular16,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0XFFF3735E)
                : const Color(0XFF7CD87A),
          ),
        ),
      ),
    );
  }
}
