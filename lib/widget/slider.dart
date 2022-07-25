import 'dart:io';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/constant/go.dart';
import 'package:quotedemo/gen/assets.gen.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';

ScreenshotController screenshotController = ScreenshotController();

CarouselSlider QuiteSliderWidget() {
  return CarouselSlider(
    options: CarouselOptions(height: 211.0, viewportFraction: 0.95),
    items: sliderData.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Quote",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: FontFamily.poppins,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.sp),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    Go.back(context);
                                  },
                                  child: const Icon(Icons.close))
                            ],
                          ),
                          const Spacer(),
                          Screenshot(
                            controller: screenshotController,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: ColorsProvider.GREDIENT_COLOR,
                                        tileMode: TileMode.mirror)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 36.w,
                                      top: 28.55.h,
                                      right: 36.w,
                                      bottom: 36.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 14.h,
                                      ),
                                      SizedBox(
                                        height: 9.18.h,
                                      ),
                                      Text(
                                        i["quote"],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22.sp),
                                      ),
                                      SizedBox(
                                        height: 30.65.h,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Daily Quote",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        FontFamily.poppins,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15.sp),
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                i["author"],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            Assets.images.quotes.path,
                                            height: 46.h,
                                            width: 46.w,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          const Spacer(),
                          PrimayIconButton(
                            text: "Share",
                            function: () async {
                              await screenshotController
                                  .capture(
                                      delay: const Duration(milliseconds: 10))
                                  .then((Uint8List? image) async {
                                final directory =
                                    await getApplicationDocumentsDirectory();
                                final imagePath =
                                    await File('${directory.path}/image.png')
                                        .create();
                                await imagePath.writeAsBytes(image!);

                                /// Share Plugin
                                await Share.shareFiles([imagePath.path]);
                              });
                            },
                          )
                        ],
                      ),
                    )),
              );
            },
            child: Container(
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
                  padding:
                      EdgeInsets.only(left: 36.w, top: 28.55.h, right: 36.w),
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
                )),
          );
        },
      );
    }).toList(),
  );
}
