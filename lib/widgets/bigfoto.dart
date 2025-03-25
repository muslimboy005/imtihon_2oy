import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/items.dart';

class Bigfoto extends StatelessWidget {
  final Items item;

  const Bigfoto({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 401,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //color: item.color,
              image: DecorationImage(
                  image: AssetImage(item.image), fit: BoxFit.fill),
            ),
          ),
          22.h,
          Text(
            item.mainText,
            style: TextStyle(
              fontFamily: AppFonts.poppins,
              fontSize: 19,
            ),
          ),
          5.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.text,
                style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontSize: 16,
                  color: Color(0xFF6B6A6A),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFF7C71B),
                    size: 17,
                  ),
                  3.w,
                  Text(
                    "${item.stars} stars",
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontSize: 16,
                      color: Color(0xFF6B6A6A),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  20.w
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
