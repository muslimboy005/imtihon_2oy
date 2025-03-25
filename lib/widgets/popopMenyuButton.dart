import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/drawerItems.dart';

class MenyuButton extends StatelessWidget {
  const MenyuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {},
      icon: SvgPicture.asset(AppImage.personavatar),
      itemBuilder: (context) => [
        PopupMenuItem(
            value: "Profile",
            child: DrawerItems(image: AppImage.personavatar, text: "Profile")),
        PopupMenuItem(
            value: "My Queue",
            child: DrawerItems(image: AppImage.queue, text: "My Queue")),
        PopupMenuItem(
            value: "Wishlist",
            child: DrawerItems(image: AppImage.wishes, text: "Wishlist")),
        PopupMenuItem(
            value: "Wishlist",
            child: DrawerItems(image: AppImage.settings, text: "Settings")),
      ],
    );
  }
}
