import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon2_oy/extations/moslashuvchanui.dart';
import 'package:imtihon2_oy/extations/sizedBox.dart';
import 'package:imtihon2_oy/screens/checkOutScreen.dart';
import 'package:imtihon2_oy/screens/chooseBoarding.dart';
import 'package:imtihon2_oy/utils/appColors.dart';
import 'package:imtihon2_oy/utils/appFonts.dart';
import 'package:imtihon2_oy/utils/appImage.dart';
import 'package:imtihon2_oy/widgets/appbar.dart';
import 'package:imtihon2_oy/widgets/button.dart';
import 'package:imtihon2_oy/widgets/card.dart';

class Paymentscreen extends StatelessWidget {
  const Paymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar2(
        text: "Select Payment",
        color: AppColors.mainPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            60.boyi.h,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 19.eni,
                children: [
                  Cards(
                    color: AppColors.mainBlue,
                  ),
                  Cards(
                    color: AppColors.mainRed,
                  ),
                  Cards(
                    color: AppColors.mainPurple,
                  ),
                  Cards(
                    color: AppColors.mainGreen,
                  ),
                ],
              ),
            ),
            60.h,
            Container(
              width: 350.eni,
              height: 63.boyi,
              color: AppColors.mainPurple,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Payment Methods",
                      style: TextStyle(
                        fontFamily: AppFonts.poppins,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "edit",
                      style: TextStyle(
                        fontFamily: AppFonts.poppins,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 350.eni,
              height: 106.boyi,
              padding: EdgeInsets.symmetric(horizontal: 28),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: AppColors.onboardingActive,
                  ),
                  right: BorderSide(
                    color: AppColors.onboardingActive,
                  ),
                  bottom: BorderSide(
                    color: AppColors.onboardingActive,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImage.mastercard,
                        height: 23,
                        fit: BoxFit.cover,
                      ),
                      5.w,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontFamily: AppFonts.poppins,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              nuqta(),
                              nuqta(),
                              Text(
                                " 2457",
                                style: TextStyle(
                                  fontFamily: AppFonts.poppins,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "10/26",
                            style: TextStyle(
                              fontFamily: AppFonts.poppins,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.asset(AppImage.trueicon),
                  ),
                ],
              ),
            ),
            36.boyi.h,
            Button(
              width: 199,
              text: "Checkout",
              color: AppColors.mainPurple,
              page: CheckOutScreen(),
            ),
            14.boyi.h,
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (ctx) {
                    return ChooseBoarding();
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
    );
  }
}

Widget nuqta() {
  return Container(
    margin: EdgeInsets.only(bottom: 6, right: 4),
    height: 4,
    width: 4,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
