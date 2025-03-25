import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/paymentScreen.dart';
import 'package:imtihon2_oy/screens/welcomeScreen.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';
import 'package:imtihon2_oy/widgets/payContainer.dart';

class ChooseBoarding extends StatelessWidget {
  const ChooseBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(
        text: "Select Payment",
        color: AppColors.mainRed,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              78.boyi.h,
              Paycontainer(image: AppImage.mastercard, text: "Credit Card"),
              34.boyi.h,
              Paycontainer(image: AppImage.paypal, text: "Paypal"),
              39.boyi.h,
              Button(
                width: 195,
                text: "Continue",
                color: AppColors.mainRed,
                page: Paymentscreen(),
              ),
              15.boyi.h,
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) {
                    return WelcomeScreen();
                  }));
                },
                child: Text(
                  "Go back",
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.7),
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              63.h,
            ],
          ),
        ),
      ),
    );
  }
}
