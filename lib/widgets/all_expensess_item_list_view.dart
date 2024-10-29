import 'package:flutter/material.dart';
import 'package:responsiveapp/models/all_expensess_item_model.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = [
    AllExpensessItemModel(
        data: 'April 2022',
        image: Assets.imagesIncome,
        price: r'$20,129',
        title: 'Income'),
    AllExpensessItemModel(
        data: 'April 2022',
        image: Assets.imagesBalance,
        price: r'$20,129',
        title: 'Balance'),
    AllExpensessItemModel(
        data: 'April 2022',
        image: Assets.imagesExpenses,
        price: r'$20,129',
        title: 'Expenses'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensessItem(
                    allExpensessItemModel: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onDoubleTap: () => updateIndex(index),
                child: AllExpensessItem(
                  allExpensessItemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }
        },
      ).toList(),
      // children: items
      //     .map(
      //       (e) => Expanded(
      //         child: AllExpensessItem(allExpensessItemModel: e),
      //       ),
      //     )
      //     .toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
