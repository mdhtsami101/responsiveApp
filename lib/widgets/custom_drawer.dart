import 'package:flutter/material.dart';
import 'package:responsiveapp/models/drawer_item_model.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/darwer_items_list_view.dart';
import 'package:responsiveapp/widgets/drawer_item.dart';
import 'package:responsiveapp/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          const SizedBox(
            height: 8,
          ),
          const DrawerItemsListView(),
        ],
      ),
    );
  }
}
