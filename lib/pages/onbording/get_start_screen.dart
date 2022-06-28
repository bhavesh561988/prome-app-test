import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/go.dart';
import 'package:quotedemo/gen/assets.gen.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:quotedemo/pages/auth/Register/register.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:quotedemo/widget/eclip_logo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
        child: SizedBox(
          height: 125.h,
          child: Column(
            children: [
              PrimayButton(
                  text: "Create An Account",
                  function: () {
                    Go.to(context, const RegisterScreen());
                  }),
              SizedBox(
                height: 20.h,
              ),
              SecondaryButton(
                  text: "Log In",
                  function: () {
                    Go.to(context, const GetStartScreen());
                  }),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              const EclipeLogo(),
              SizedBox(
                height: 105.h,
              ),
              Image.asset(
                Assets.images.onBoringDone.path,
                height: 205.h,
                width: 227.w,
              ),
              SizedBox(
                height: 60.h,
              ),
              Text(
                "Let’s get started",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.poppins,
                    color: Colors.black,
                    fontSize: 22.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Moving towards the right direction",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                    color: ColorsProvider.APP_GREY,
                    fontSize: 15.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
