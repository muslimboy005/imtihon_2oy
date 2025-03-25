import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/TextField.dart';
import 'package:imtihon2_oy/widgets/drawerItems.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(AppImage.exit))
              ],
            ),
            37.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 73,
                      width: 73,
                      child: SvgPicture.asset(
                        AppImage.personavatar,
                      ),
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontFamily: AppFonts.openSans,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    5.h,
                    Text(
                      "Premium",
                      style: TextStyle(
                        fontFamily: AppFonts.openSans,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    39.h,
                    Textfield(
                      image: AppImage.searchIcon,
                      hintText: "Search here",
                    ),
                    34.h,
                    DrawerItems(
                      image: AppImage.personavatar,
                      text: "Account",
                    ),
                    17.h,
                    Divider(),
                    17.h,
                    DrawerItems(
                      image: AppImage.dashboard,
                      text: "Dashboard",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.wallets,
                      text: "My Wallet",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.rental,
                      text: "Current Rentals",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.purchase,
                      text: "Purchases",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.games,
                      text: "Games Genres",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.console,
                      text: "Consoles",
                    ),
                    17.h,
                    Divider(),
                    17.h,
                    DrawerItems(
                      image: AppImage.upgrade,
                      text: "Upgrade Membership",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.help,
                      text: "Help",
                    ),
                    26.h,
                    DrawerItems(
                      image: AppImage.logout,
                      text: "Log Out",
                    ),
                    26.h,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
