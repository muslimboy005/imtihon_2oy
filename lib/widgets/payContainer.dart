import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';

class Paycontainer extends StatelessWidget {
  final String image;
  final String text;

  const Paycontainer({super.key, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361.eni,
      height: 218,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Color(0xFF9D9BAD).withValues(alpha: 0.4),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 80,
              fit: BoxFit.fill,
            ),
            31.boyi.h,
            Text(
              text,
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.7),
                fontFamily: AppFonts.poppins,
                fontSize: 25,
                letterSpacing: -0.24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
