import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appImage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 12, right: 25),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.mainGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  AppImage.home,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 12),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.mainPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  AppImage.wallet,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 12, right: 25),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.mainBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  AppImage.bell,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 12),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.mainRed,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  AppImage.group,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
