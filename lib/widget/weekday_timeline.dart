import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/data.dart';
import 'package:quotedemo/pages/tabs/home_page/home_page_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekDayTimeLineWidget extends StatelessWidget {
  const WeekDayTimeLineWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: Get.width,
      child: Center(
        child: ListView.builder(
          itemExtent: 50.0.w,
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                controller.date.weekday < data[index]["id"]
                    ? Container(
                        decoration: BoxDecoration(
                            color: ColorsProvider.APPBAR_BG_COLOR,
                            shape: BoxShape.circle),
                        height: 25.h,
                        width: 25.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 15.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorsProvider.APPBAR_CONTAINER_COLOR),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: 25.h,
                        width: 25.w,
                        child: Center(
                          child: Icon(
                            controller.date.weekday == data[index]["id"]
                                ? Icons.circle
                                : Icons.check,
                            color: Colors.white,
                            size: controller.date.weekday == data[index]["id"]
                                ? 12.sp
                                : 18.sp,
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsProvider.PRIMARY_COLOR),
                      ),
                const SizedBox(
                  height: 9.34,
                ),
                Text(
                  data[index]["day"],
                  style: TextStyle(
                      color: ColorsProvider.UNSELECTED_COLOR,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Visibility(
                  visible: controller.date.weekday == data[index]["id"],
                  child: Divider(
                    thickness: 5.h,
                    height: 5.h,
                    color: ColorsProvider.PRIMARY_COLOR,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
