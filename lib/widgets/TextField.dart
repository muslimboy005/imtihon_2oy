import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';

class Textfield extends StatelessWidget {
  final String image;
  final String hintText;
  final Color backgroundColor;

  const Textfield({
    super.key,
    required this.image,
    required this.hintText,
    this.backgroundColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 329.eni,
      child: TextField(
        cursorColor:
            backgroundColor == Colors.white ? Color(0xFF111111) : Colors.white,
        style: TextStyle(
            letterSpacing: 2,
            color: backgroundColor == Colors.white
                ? Color(0xFF111111)
                : Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 21),
          fillColor: backgroundColor,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset(image,
                color: backgroundColor == Colors.white
                    ? Color(0xFF111111)
                    : Colors.white),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: AppFonts.poppins,
              fontWeight: FontWeight.w400,
              color: backgroundColor == Colors.white
                  ? Color(0xFF111111)
                  : Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
