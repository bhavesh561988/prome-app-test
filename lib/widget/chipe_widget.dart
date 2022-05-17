import 'package:flutter/material.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipWidget extends StatelessWidget {
  final String name;
  const ChipWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsProvider.TIMELINE_CONTAINER_COLOR,
          borderRadius: BorderRadius.circular(21.r)),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
      child: Text(name,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: ColorsProvider.UNSELECTED_COLOR)),
    );
  }
}
