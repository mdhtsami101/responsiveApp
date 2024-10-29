import 'package:flutter/material.dart';
import 'package:responsiveapp/models/drawer_item_model.dart';
import 'package:responsiveapp/models/user_info_model.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/active_and_inactive_item.dart';
import 'package:responsiveapp/widgets/darwer_items_list_view.dart';
import 'package:responsiveapp/widgets/drawer_item.dart';
import 'package:responsiveapp/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
