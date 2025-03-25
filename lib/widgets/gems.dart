import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/utils/appImage.dart';

class Gems extends StatelessWidget {
  final Color color;

  Gems({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Container(
                height: 115,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: color,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: Image.asset(
                AppImage.gem,
                width: 150.eni,
                height: 148.boyi,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
