import 'package:flutter/material.dart';
import 'package:responsiveapp/models/item_detalis_model.dart';
import 'package:responsiveapp/utils/app_styles.dart';
import 'package:responsiveapp/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static var items = [
    ItemDetailsModel(
        color: const Color(0XFF208BC7), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: const Color(0XFF4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: const Color(0XFF064060), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(
        color: const Color(0XFFE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );
  }
}
