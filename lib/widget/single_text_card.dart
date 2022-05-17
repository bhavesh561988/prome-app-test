import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/pages/tabs/home_page/home_page_controller.dart';
import 'package:quotedemo/widget/custom_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleTextCard extends StatelessWidget {
  const SingleTextCard({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        redius: 14,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Meditate for 10 minutes",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Transform.scale(
                scale: 1.1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.isChecked.value,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          controller.isChecked.value = value!;
                        },
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(
                              width: 1.0, color: ColorsProvider.PRIMARY_COLOR),
                        ),
                        shape: const CircleBorder(),
                      ),
                    ),
                    controller.isChecked.value == true
                        ? const SizedBox.shrink()
                        : GestureDetector(
                            onTap: () {
                              controller.isChecked.value =
                                  !controller.isChecked.value;
                            },
                            child: const Icon(
                              Icons.check,
                              size: 14,
                              color: Color(0xffCCCCCC),
                            ),
                          )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
