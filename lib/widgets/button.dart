import 'package:flutter/material.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';

class Button extends StatelessWidget {
  final double width;
  final Color color;
  final String text;
  final Widget? page;

  const Button({
    super.key,
    required this.width,
    required this.text,
    this.color = Colors.white,
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
        height: 59,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: color == Colors.white
                ? Color(0xFF9D9BAD).withValues(alpha: 0.5)
                : color,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: AppFonts.poppins,
              fontSize: 16,
              color: color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
