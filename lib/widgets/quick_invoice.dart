import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/app_styles.dart';
import 'package:responsiveapp/widgets/costom_background_container.dart';
import 'package:responsiveapp/widgets/custom_text_filed.dart';
import 'package:responsiveapp/widgets/latest_transaction.dart';
import 'package:responsiveapp/widgets/latest_transaction_list_view.dart';
import 'package:responsiveapp/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        CustomTextFiled(),
      ],
    ));
  }
}
