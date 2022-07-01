import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/gen/assets.gen.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:quotedemo/pages/auth/Register/register_controller.dart';
import 'package:quotedemo/widget/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerController = RegisterController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SizedBox(
          height: 100.h,
          child: Column(
            children: [
              PrimayButton(
                  function: () {
                    registerController.validateForm();
                  },
                  text: "Create An Account"),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already A Member?",
                    style: TextStyle(
                        color: ColorsProvider.UNSELECTED_COLOR,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Log In",
                    style: TextStyle(
                        color: ColorsProvider.PRIMARY_COLOR,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: const SocialButton(
                    icons: Icons.facebook,
                    iColor: Colors.blue,
                    text: "Sign up with Facebook",
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: SocialButton(
                    isIcon: false,
                    image: Assets.icons.google.path,
                    iColor: Colors.blue,
                    text: "Sign up with Google",
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      color: ColorsProvider.UNSELECTED_COLOR,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Form(
                    key: registerController.formKey,
                    child: Column(
                      children: [
                        CustomInputField(
                          image: Assets.icons.user.path,
                          onChanged: (value) {},
                          controller: registerController.firstNameController,
                          isValidate: false,
                          hint: "First Name",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomInputField(
                          image: Assets.icons.user.path,
                          onChanged: (value) {},
                          controller: registerController.firstNameController,
                          isValidate: false,
                          hint: "Last Name",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomInputField(
                          image: Assets.icons.email.path,
                          onChanged: (value) {},
                          controller: registerController.firstNameController,
                          isValidate: false,
                          hint: "Email",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomPasswordField(
                          image: Assets.icons.lock.path,
                          onChanged: (value) {},
                          controller: registerController.firstNameController,
                          isValidate: false,
                          hint: "Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  final String hint;
  final String image;

  final TextEditingController controller;
  final bool isValidate;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomPasswordField({
    required this.hint,
    required this.image,
    this.validator,
    this.onChanged,
    required this.controller,
    required this.isValidate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        style: TextStyle(
            color: ColorsProvider.APP_BLACK,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 0.01),
          hintText: hint,
          hintStyle: TextStyle(
              color: ColorsProvider.APP_GREY,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp),
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.only(left: 0),
          suffixIcon:
              const Padding(padding: EdgeInsets.all(12.0), child: Text("Show")),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              image,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String hint;
  final String image;

  final TextEditingController controller;
  final bool isValidate;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomInputField({
    required this.hint,
    required this.image,
    this.validator,
    this.onChanged,
    required this.controller,
    required this.isValidate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        style: TextStyle(
            color: ColorsProvider.APP_BLACK,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 0.01),
          hintText: hint,
          hintStyle: TextStyle(
              color: ColorsProvider.APP_GREY,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp),
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.only(left: 0),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              Assets.icons.check.path,
              height: 6,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              image,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(
              color: ColorsProvider.APP_BLACK,
              width: 0.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData? icons;
  final String? text;
  final Color? iColor;
  final bool? isIcon;
  final String? image;
  const SocialButton(
      {Key? key, this.icons, this.text, this.iColor, this.isIcon, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isIcon == true || isIcon == null
              ? Icon(
                  icons,
                  color: iColor,
                )
              : Image.asset(
                  image ?? "",
                  height: 25.h,
                  width: 25.w,
                ),
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
