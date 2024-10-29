import 'package:flutter/material.dart';
import 'package:responsiveapp/models/all_expensess_item_model.dart';
import 'package:responsiveapp/utils/app_styles.dart';
import 'package:responsiveapp/widgets/all_expensess_item_header.dart';
import 'package:responsiveapp/widgets/inactive_and_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key,
      required this.allExpensessItemModel,
      required this.isSelected});
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel);
  }
}
