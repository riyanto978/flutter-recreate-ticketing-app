import 'package:app_movie_ticket/shared/colors.dart';
import 'package:app_movie_ticket/shared/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/icon_logo.png",
              width: 130.w,
              height: 136.h,
            ),
          ),
          70.verticalSpace,
          Text(
            "New Experience",
            style: fontStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          16.verticalSpace,
          Text(
            "Watch a new movie much\neasier than any before",
            textAlign: TextAlign.center,
            style: fontStyle16.copyWith(
              color: grayColor,
              fontWeight: FontWeight.w300,
            ),
          ),
          70.verticalSpace,
          SizedBox(
            height: 45.h,
            width: 250.w,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Get Started"),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      6,
                    ),
                  ),
                ),
                backgroundColor: purpleColor,
                foregroundColor: whiteColor,
                textStyle: fontStyle16,
              ),
            ),
          ),
          19.verticalSpace,
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account?',
                    style: fontStyle14.copyWith(
                      color: grayColor,
                    ),
                  ),
                  TextSpan(
                    text: '\u{00A0}Sign In',
                    style: fontStyle14.copyWith(
                      color: purpleColor,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
          70.verticalSpace,
        ],
      ),
    );
  }
}
