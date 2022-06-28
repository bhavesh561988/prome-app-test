import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/gen/fonts.gen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                "Create An Account",
                style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: const SocialButton(
                  icons: Icons.apple,
                  text: "Sign up with Apple",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData? icons;
  final String? text;
  const SocialButton({Key? key, this.icons, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icons),
          SizedBox(
            width: 12.w,
          ),
          Text(
            text!,
            style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontWeight: FontWeight.w500,
                fontSize: 15.sp),
          )
        ],
      ),
      width: Get.width,
      height: 51.h,
      decoration: BoxDecoration(
          color: ColorsProvider.BUTTON_GREY,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
