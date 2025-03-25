import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/onboarding.dart';
import 'package:imtihon2_oy/screens/sign_in.dart';
import 'package:imtihon2_oy/screens/sign_up.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/gems.dart';
import 'package:imtihon2_oy/widgets/textFieldContainer.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(text: "Welcome to Gem", color: AppColors.mainPurple),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              49.boyi.h,
              Gems(
                color: AppColors.mainPurple,
              ),
              23.boyi.h,
              Text(
                "Digital Game Rentals",
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
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return SignIn();
                      },
                    ),
                  );
                },
                child: TextFieldContainer(
                  image: AppImage.person,
                  text: "Login to your account",
                  page: SignIn(),
                ),
              ),
              20.boyi.h,
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return SignUp();
                      },
                    ),
                  );
                },
                child: TextFieldContainer(
                  image: AppImage.verifiedPerson,
                  text: "Create a new account",
                  page: SignUp(),
                  backgroundColor: AppColors.mainPurple,
                ),
              ),
              42.boyi.h,
              Text(
                "Not a member of Gem yet?",
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
                  "Start your free trial",
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainPurple,
                    fontSize: 16,
                    letterSpacing: -0.24,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
