import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/go.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:quotedemo/pages/onbording/get_start_screen.dart';
import 'package:quotedemo/pages/onbording/onBordingController.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:quotedemo/widget/eclip_logo.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    final _controller = OnboardingController();

    return Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
          child: PrimayButton(function: () {
            Go.to(context, const GetStartScreen());
          }),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const EclipeLogo(),
                      SizedBox(
                        height: 95.59.h,
                      ),
                      Image.asset(
                        _controller.onboardingPages[index].imageAsset,
                        height: 205.h,
                        width: 227.w,
                      ),
                      SizedBox(
                        height: 63.h,
                      ),
                      Text(
                        _controller.onboardingPages[index].title,
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
                        _controller.onboardingPages[index].subTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.poppins,
                            color: ColorsProvider.APP_GREY,
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 39.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _controller.onboardingPages.length,
                          (index) => Obx(() {
                            return GestureDetector(
                              onTap: () {
                                _controller.onAddButtonTapped(index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorsProvider.APP_GREY_POINT,
                                  shape: BoxShape.circle,
                                ),
                                margin: const EdgeInsets.all(4),
                                width: 16.w,
                                height: 16.h,
                                child: Padding(
                                  padding: EdgeInsets.all(3.5.sp),
                                  child: Container(
                                    width: 9.13.w,
                                    height: 9.13.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          _controller.selectedPageIndex.value ==
                                                  index
                                              ? ColorsProvider.APP_GREEN_POINT
                                              : ColorsProvider.APP_GREY_POINT,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ));
  }
}
