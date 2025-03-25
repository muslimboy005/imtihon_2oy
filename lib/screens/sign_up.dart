import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/sign_in.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/TextField.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';
import 'package:imtihon2_oy/widgets/gems.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(text: "Welcome Back", color: AppColors.mainBlue),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              49.boyi.h,
              Gems(
                color: AppColors.mainBlue,
              ),
              23.boyi.h,
              Text(
                "Signup Below",
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
              ),
              34.boyi.h,
              Button(
                width: 141.eni,
                text: "Sign up",
                page: SignIn(),
              ),
              42.boyi.h,
              Text(
                "Already have an account?",
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
                    return SignIn();
                  }));
                },
                child: Text(
                  "Go back",
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainBlue,
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
