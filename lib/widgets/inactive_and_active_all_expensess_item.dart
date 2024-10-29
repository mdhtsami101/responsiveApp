import 'package:flutter/material.dart';
import 'package:responsiveapp/models/all_expensess_item_model.dart';
import 'package:responsiveapp/utils/app_styles.dart';
import 'package:responsiveapp/widgets/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.data,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.data,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
