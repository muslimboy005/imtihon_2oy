import 'package:flutter/material.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/chooseBoarding.dart';
import 'package:imtihon2_oy/screens/welcomeScreen.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/utils/onboarding.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';

List<OnboardingItem> elemets = [
  OnboardingItem(
    color: AppColors.mainPurple,
    image: AppImage.onboarding1,
    text: "Start 14 days free of charge",
  ),
  OnboardingItem(
    color: AppColors.mainGreen,
    image: AppImage.onboarding2,
    text: "Access over 3000 games",
  ),
  OnboardingItem(
    color: AppColors.mainBlue,
    image: AppImage.onboarding3,
    text: "Digital and mail rentals",
  ),
  OnboardingItem(
    color: AppColors.mainRed,
    image: AppImage.onboarding4,
    text: "Multiple plans",
  ),
];
int index = 0;

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OnboardingState();
  }
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  void counter(bool isNext) {
    setState(() {
      if (isNext) {
        index = (index + 1) % 4;
      } else {
        index = (index - 1 + 4) % 4;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(
        text: "Start Your Free Trial",
        color: elemets[index].color,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              counter(true);
            } else if (details.primaryVelocity! > 0) {
              counter(false);
            }
          },
          child: Center(
            child: Column(
              children: [
                73.boyi.h,
                Container(
                  padding: EdgeInsets.all(10),
                  width: 238.eni,
                  height: 361.boyi,
                  decoration: BoxDecoration(
                      color: elemets[index].color,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(elemets[index].image),
                ),
                42.boyi.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        width: 9.eni,
                        height: 9.52.boyi,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: i == index
                                ? AppColors.onboardingActive
                                : elemets[index].color),
                      ),
                  ],
                ),
                18.boyi.h,
                Text(
                  elemets[index].text,
                  style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    letterSpacing: -0.24,
                    color: Colors.black.withValues(
                      alpha: 0.7,
                    ),
                  ),
                ),
                28.boyi.h,
                Button(
                  width: 238.eni,
                  text: "Start Trial",
                  color: elemets[index].color,
                  page: ChooseBoarding(),
                ),
                32.boyi.h,
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) {
                      return WelcomeScreen();
                    }));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                69.boyi.h
              ],
            ),
          ),
        ),
      ),
    );
  }
}
