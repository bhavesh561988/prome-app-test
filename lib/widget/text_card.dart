import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/widget/custom_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/widget/diloge.dart';

class TextCardWidget extends StatelessWidget {
  int? index;
  TextCardWidget({
    this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        width: Get.width,
        redius: 14,
        child: Padding(
          padding: EdgeInsets.only(
              top: 16.h, left: 13.w, right: 10.w, bottom: 8.15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                index == 1 ? "Prompt - Affirmation" : "Prompt - Gratitude",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorsProvider.UNSELECTED_COLOR),
              ),
              GestureDetector(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                  width: Get.width,
                  // height: 85.44.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.70,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 8),
                              child: index == 1
                                  ? Text(
                                      "I am...           \n",
                                      style: TextStyle(
                                          color: const Color(
                                            0xffC4c4c4,
                                          ),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    )
                                  : Text(
                                      "I am grateful for running my own business.",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          const Icon(
                            Icons.chevron_right,
                            color: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
