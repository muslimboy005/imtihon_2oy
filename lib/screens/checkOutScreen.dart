import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/sign_in.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(
        text: "Payment Complete",
        color: AppColors.mainGreen,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              60.h,
              Text(
                "You're All Set!",
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 27,
                    color: Colors.black),
              ),
              24.h,
              SizedBox(
                width: 358.eni,
                height: 73,
                child: Text(
                  "Enjoy all of the perks of Gem for 14 days free! Continue to the dashboard or go back.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withValues(alpha: 0.7),
                  ),
                ),
              ),
              Container(
                height: 350,
                width: 238.eni,
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 32),
                decoration: BoxDecoration(
                  color: AppColors.mainGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  AppImage.onboarding2,
                  fit: BoxFit.fill,
                ),
              ),
              38.h,
              Button(
                width: 195,
                text: "Go to Dashboard",
                color: AppColors.mainGreen,
              ),
              14.boyi.h,
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (ctx) {
                      return SignIn();
                    }),
                  );
                },
                child: Text(
                  "Go back",
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
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
