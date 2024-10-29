import 'package:flutter/material.dart';
import 'package:responsiveapp/models/all_expensess_item_model.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/all_expensess_header.dart';
import 'package:responsiveapp/widgets/all_expensess_item.dart';
import 'package:responsiveapp/widgets/all_expensess_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          const AllExpensessHeader(),
          const SizedBox(
            height: 16,
          ),
          const AllExpensessItemListView(),
        ],
      ),
    );
  }
}
