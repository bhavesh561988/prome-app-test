import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:quotedemo/widget/slider.dart';
import 'package:quotedemo/widget/timeline.dart';

import '../../../home_calander/src/calendar_timeline.dart';
import 'home_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePagePage extends GetView<HomePageController> {
  HomePagePage({Key? key}) : super(key: key);
  final myController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 120.h,
                width: Get.width,
                color: ColorsProvider.APPBAR_BG_COLOR,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        DateFormat('MMM dd, yyyy').format(DateTime.now()),
                        style: TextStyle(
                            color: const Color(0xff757C90),
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 39.h,
                      ),
                      CalendarTimeline(
                        initialDate: DateTime(2020, 4, 20),
                        firstDate: DateTime(2019, 1, 15),
                        lastDate: DateTime(2020, 11, 20),
                        onDateSelected: (date) => print(date),
                        leftMargin: 20,
                        monthColor: Colors.blueGrey,
                        dayColor: Colors.teal[200],
                        activeDayColor: Colors.white,
                        activeBackgroundDayColor: Colors.redAccent[100],
                        dotsColor: const Color(0xFF333A47),
                        selectableDayPredicate: (date) => date.day != 23,
                        locale: 'en_ISO',
                      )
                      //WeekDayTimeLineWidget(controller: controller),
                    ],
                  ),
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
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
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
      ),
    );
  }
}
