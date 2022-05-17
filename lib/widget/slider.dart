import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/gen/assets.gen.dart';

CarouselSlider QuiteSliderWidget() {
  return CarouselSlider(
    options: CarouselOptions(height: 211.0, viewportFraction: 0.95),
    items: sliderData.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: ColorsProvider.GREDIENT_COLOR,
                  )),
              child: Padding(
                padding: EdgeInsets.only(left: 36.w, top: 28.55.h, right: 36.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 14.h,
                    ),
                    Image.asset(
                      Assets.images.logoWhite.path,
                      height: 47.89.h,
                      width: 28.51,
                    ),
                    SizedBox(
                      height: 9.18.h,
                    ),
                    Text(
                      i["quote"],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 17.65.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          i["photo"],
                          height: 27.62.h,
                          width: 27.62.w,
                        ),
                        const SizedBox(
                          width: 7.64,
                        ),
                        Text(
                          i["author"],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ));
        },
      );
    }).toList(),
  );
}
