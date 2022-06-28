import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback? function;
  CustomButton({
    this.function,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 51.92,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: ColorsProvider.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        )),
      ),
    );
  }
}

class PrimayButton extends StatelessWidget {
  final String? text;
  final VoidCallback? function;
  const PrimayButton({
    Key? key,
    this.function,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          child: Center(
              child: Text(
            text ?? "Let’s get started",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp),
          )),
          width: Get.width,
          height: 51.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorsProvider.APP_GREEN_POINT,
          )),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? function;
  const SecondaryButton({
    Key? key,
    this.function,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          child: Center(
              child: Text(
            text ?? "Let’s get started",
            style: TextStyle(
                color: ColorsProvider.APP_GREEN_POINT,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp),
          )),
          width: Get.width,
          height: 51.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: ColorsProvider.APP_GREEN_POINT,
              ))),
    );
  }
}
