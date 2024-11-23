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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 0,
              allExpensessItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              allExpensessItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              allExpensessItemModel: items[2],
            ),
          ),
        )
      ],
    );
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
