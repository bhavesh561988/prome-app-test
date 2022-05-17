import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/widget/custom_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/widget/diloge.dart';

class RowCardWidget extends StatelessWidget {
  const RowCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCard(
            redius: 14,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                      height: 144,
                      width: Get.width * 0.36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 25.17.sp,
                        color: ColorsProvider.PRIMARY_COLOR,
                      ),
                    ),
                  ),
                ),
                Text(
                  "One big thing",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            )),
        CustomCard(
            redius: 14,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 44,
                    width: Get.width * 0.36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                    child: GestureDetector(
                      onTap: () {
                        showAlertDialog(context);
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 25.17.sp,
                        color: ColorsProvider.PRIMARY_COLOR,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: Container(
                    height: 44,
                    width: Get.width * 0.36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                    child: Icon(
                      Icons.add_circle_outline,
                      size: 25.17.sp,
                      color: ColorsProvider.PRIMARY_COLOR,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                      height: 44,
                      width: Get.width * 0.36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 25.17.sp,
                        color: ColorsProvider.PRIMARY_COLOR,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Three little things",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            )),
      ],
    );
  }
}
