import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/items.dart';

class Elements extends StatelessWidget {
  final List<Items> item;
  final double widht;
  final double height;

  const Elements({
    super.key,
    required this.item,
    this.widht = 126,
    this.height = 126,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 28,
        children: [
          for (int i = 0; i < item.length; i++)
            Column(
              children: [
                (i == 0 && widht != 126)
                    ? SizedBox(
                        height: height + 10,
                        width: widht + 10,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                padding: EdgeInsets.only(top: 30),
                                height: height,
                                width: widht,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: item[i].color,
                                ),
                                child: Image.asset(
                                  item[i].image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -5,
                              right: -5,
                              child: IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(60),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 35,
                                    color: AppColors.mainPurple,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: height + 15,
                        padding: EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          height: height,
                          width: widht,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: item[i].color),
                          child: Image.asset(
                            item[i].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                2.h,
                Text(
                  item[i].mainText,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  item[i].text,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 13,
                    color: Color(0xFF6B6A6A),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  spacing: 5,
                  children: [
                    for (int j = 0; j < item[i].stars; j++)
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Color(0xFFF7C71B),
                      )
                  ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
