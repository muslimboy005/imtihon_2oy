import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/items.dart';

class Genres extends StatelessWidget {
  final List<Items> item;

  const Genres({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 28,
        children: [
          for (Items i in item)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: 144,
                  width: 245,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), color: i.color),
                  child: Image.asset(
                    i.image,
                    fit: BoxFit.contain,
                  ),
                ),
                17.h,
                Text(
                  i.mainText,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  i.text,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 13,
                    color: Color(0xFF6B6A6A),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
