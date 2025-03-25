import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/mainScreen.dart';
import 'package:imtihon2_oy/screens/onboarding.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/TextField.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';
import 'package:imtihon2_oy/widgets/gems.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(text: "Welcome Back", color: AppColors.mainGreen),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              49.boyi.h,
              Gems(
                color: AppColors.mainGreen,
              ),
              23.boyi.h,
              Text(
                "Login Below",
                style: TextStyle(
                  color: Colors.black.withValues(
                    alpha: 0.7,
                  ),
                  fontFamily: AppFonts.poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              42.boyi.h,
              Textfield(
                image: AppImage.person,
                hintText: "Username or Email",
              ),
              20.boyi.h,
              Textfield(
                image: AppImage.key,
                hintText: "Enter Password",
                backgroundColor: AppColors.mainGreen,
              ),
              34.boyi.h,
              Button(
                width: 141.eni,
                text: "Login",
                page: Mainscreen(),
              ),
              42.boyi.h,
              Text(
                "Forgot your username or password?",
                style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  letterSpacing: -0.24,
                ),
              ),
              7.5.boyi.h,
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) {
                    return Onboarding();
                  }));
                },
                child: Text(
                  "Click here",
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainGreen,
                    fontSize: 16,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              77.boyi.h
            ],
          ),
        ),
      ),
    );
  }
}
