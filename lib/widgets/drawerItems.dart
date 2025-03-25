import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';

class DrawerItems extends StatelessWidget {
  final String image;
  final String text;

  const DrawerItems({super.key, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: text == "Consoles"
                  ? Image.asset(
                      image,
                      fit: BoxFit.contain,
                    )
                  : SvgPicture.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
            ),
            7.eni.w,
            Text(
              text,
              style: TextStyle(
                fontFamily: AppFonts.openSans,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
