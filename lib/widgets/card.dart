import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';

class Cards extends StatelessWidget {
  final Color color;
  const Cards({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        clipBehavior: Clip.hardEdge,
        width: 315.eni,
        height: 184.boyi,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          clipBehavior:
              Clip.hardEdge, // Qora container tashqariga chiqishi uchun
          children: [
            Positioned(
              top: -160, // Biroz tashqariga chiqarish
              left: 120, // O'ng tomonga siljitish
              child: Container(
                width: 321.eni,
                height: 226.boyi,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  color: Colors.black.withValues(alpha: 0.2),
                ),
              ),
            ),
            Positioned(
              bottom: -160,
              right: 120, // O'ng tomonga siljitish
              child: Container(
                width: 321.eni,
                height: 226.boyi,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  color: Colors.black.withValues(alpha: 0.2),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 30,
          ),
          width: 315.eni,
          height: 184.boyi,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Balance",
                        style: TextStyle(
                          fontFamily: AppFonts.ceraPro,
                          color: Colors.white,
                        ),
                      ),
                      9.boyi.h,
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "5,750,20",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: AppFonts.ceraPro,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45.eni,
                    height: 36.boyi,
                    child: Image.asset(
                      AppImage.mastercard2,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5282 3356 7890 1289",
                    style: TextStyle(
                      fontFamily: AppFonts.ceraPro,
                      color: Colors.white,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "09",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: AppFonts.ceraPro,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "/",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "25",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: AppFonts.ceraPro,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
