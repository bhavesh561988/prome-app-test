import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:quotedemo/widget/slider.dart';
import 'package:quotedemo/widget/timeline.dart';
import 'package:quotedemo/widget/weekday_timeline.dart';

import 'home_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePagePage extends GetView<HomePageController> {
  HomePagePage({Key? key}) : super(key: key);
  final myController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 120.h,
              width: Get.width,
              color: ColorsProvider.APPBAR_BG_COLOR,
              child: Column(
                children: [
                  SizedBox(
                    height: 39.h,
                  ),
                  WeekDayTimeLineWidget(controller: controller),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27.87.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.23),
                    child: Text(
                      "Daily Quotes",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.28.h,
                  ),
                  QuiteSliderWidget(),
                  SizedBox(
                    height: 24.46.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.23),
                    child: Text(
                      "Today’s Journey",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp),
                    ),
                  ),
                ],
              ),
            ),
            TimeLineWidget(controller: controller),
            SizedBox(
              height: 46.h,
            ),
            Center(
              child: Text(
                "You’re done!",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: CustomButton(text: "Add more cards"),
            ),
            SizedBox(
              height: 12.h,
            ),
          ]),
    );
  }
}
