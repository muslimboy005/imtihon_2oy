import 'package:flutter/material.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';

class Appbar2 extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Color color;

  const Appbar2({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
      child: AppBar(
        toolbarHeight: 188,
        centerTitle: true,
        backgroundColor: color,
        title: Text(
          "Welcome to Gem",
          style: TextStyle(
            fontFamily: AppFonts.poppins,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 32,
            height: 24,
            letterSpacing: -0.24,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(188);
}
