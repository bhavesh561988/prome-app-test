import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/gen/assets.gen.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'navigation_handler_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationHandlerPage extends GetView<NavigationHandlerController> {
  const NavigationHandlerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: const CustomAppBar(), preferredSize: Size.fromHeight(70.h)),
        bottomNavigationBar: BottomNavigationBarWidget(
          controller: controller,
        ),
        body: controller.widgetOptions
            .elementAt(controller.selectedIndex.value)));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsProvider.APPBAR_BG_COLOR,
      elevation: 0,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 19),
          child: Image.asset(
            Assets.icons.search.path,
            height: 18.h,
            width: 18.w,
          ),
        )
      ],
      title: Text(
        "Today",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22.sp),
      ),
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.logoGredient.path,
            height: 33.33,
            width: 20.1,
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final NavigationHandlerController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black, width: 0.1))),
      child: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            print(controller.canVibrate);
            controller.onItemTapped(index);
          },
          enableFeedback: true,
          showUnselectedLabels: true,
          selectedFontSize: 14.sp,
          iconSize: 24,
          selectedItemColor: ColorsProvider.PRIMARY_COLOR,
          selectedIconTheme: IconThemeData(color: ColorsProvider.PRIMARY_COLOR),
          unselectedFontSize: 14.sp,
          unselectedLabelStyle: TextStyle(
              fontFamily: FontFamily.poppins,
              color: ColorsProvider.PRIMARY_COLOR,
              fontSize: 14.sp,
              height: 1.5,
              fontWeight: FontWeight.w400),
          unselectedItemColor: ColorsProvider.UNSELECTED_COLOR,
          selectedLabelStyle: TextStyle(
              fontFamily: FontFamily.poppins,
              color: ColorsProvider.PRIMARY_COLOR,
              fontSize: 14.sp,
              height: 1.5,
              fontWeight: FontWeight.w400),
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              tooltip: "Today",
              icon: Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: Image.asset(
                  Assets.icons.today.path,
                  height: 24.h,
                  width: 24.w,
                  color: controller.isCurrent(0)
                      ? ColorsProvider.PRIMARY_COLOR
                      : ColorsProvider.UNSELECTED_COLOR,
                ),
              ),
              label: "Today",
            ),
            BottomNavigationBarItem(
                tooltip: "Explore",
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Image.asset(
                    Assets.icons.globe.path,
                    height: 24.h,
                    width: 24.w,
                    color: controller.isCurrent(1)
                        ? ColorsProvider.PRIMARY_COLOR
                        : ColorsProvider.UNSELECTED_COLOR,
                  ),
                ),
                label: "Explore"),
            BottomNavigationBarItem(
                tooltip: "Profile",
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 6.h),
                  child: Image.asset(
                    Assets.icons.user.path,
                    height: 24.h,
                    width: 24.w,
                    color: controller.isCurrent(2)
                        ? ColorsProvider.PRIMARY_COLOR
                        : ColorsProvider.UNSELECTED_COLOR,
                  ),
                ),
                label: "Profile"),
          ]),
    );
  }
}
