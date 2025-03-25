import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldContainer extends StatelessWidget {
  final String image;
  final String text;
  final Color backgroundColor;
  final Widget? page;

  const TextFieldContainer({
    super.key,
    this.backgroundColor = Colors.white,
    required this.image,
    required this.text,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: page == null
          ? () {}
          : () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (ctx) {
                return page!;
              }));
            },
      child: Container(
        width: 329.eni,
        height: 70.boyi,
        padding: EdgeInsets.symmetric(
          vertical: 21,
          horizontal: 32,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 2,
            color: backgroundColor == Colors.white
                ? Color(0xFF9D9BAD).withValues(alpha: 0.3)
                : backgroundColor,
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 19,
            children: [
              SvgPicture.asset(image),
              Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w400,
                    color: backgroundColor == Colors.white
                        ? Color(0xFF111111)
                        : Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
